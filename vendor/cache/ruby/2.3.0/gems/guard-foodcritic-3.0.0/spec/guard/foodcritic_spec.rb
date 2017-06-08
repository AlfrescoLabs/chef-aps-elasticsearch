require 'guard/compat/test/helper'
require 'guard/foodcritic'

module Guard
  RSpec.describe Foodcritic do
    before do
      allow(Guard::Compat::UI).to receive(:notify)
      allow(Guard::Compat::UI).to receive(:info)
    end

    it { is_expected.to be_a_kind_of ::Guard::Plugin }

    describe '#options' do
      it '[:all_on_start] defaults to true' do
        expect(described_class.new.options[:all_on_start]).to be true
      end

      it "[:cookbook_paths] defaults to ['cookbooks']" do
        expect(described_class.new.options[:cookbook_paths]).to eq(['cookbooks'])
      end

      it '[:notification] defaults to true' do
        expect(described_class.new.options[:notification]).to be true
      end
    end

    shared_examples 'handles runner results' do
      context 'the runner fails' do
        before { allow(runner).to receive(:run).and_return(false) }
        it { expect { subject }.to throw_symbol :task_has_failed }

        context 'notifications are enabled' do
          let(:notification) { true }

          it 'notifies the user of the failure' do
            expect(Guard::Compat::UI).to receive(:notify).with('Foodcritic failed', image: :failed)
            catch(:task_has_failed) { subject }
          end
        end

        context 'notifications are disabled' do
          let(:notification) { false }

          it 'does not notify the user of the failure' do
            expect(Guard::Compat::UI).not_to receive(:notify)
            catch(:task_has_failed) { subject }
          end
        end
      end

      context 'the runner succeeds' do
        before { allow(runner).to receive(:run).and_return(true) }
        it { expect { subject }.not_to throw_symbol :task_has_failed }

        context 'notifications are enabled' do
          let(:notification) { true }

          it 'notifies the user of the success' do
            expect(Guard::Compat::UI).to receive(:notify).with('Foodcritic passed', image: :success)
            subject
          end
        end

        context 'notifications are disabled' do
          let(:notification) { false }

          it 'does not notify the user of the success' do
            expect(Guard::Compat::UI).not_to receive(:notify)
            subject
          end
        end
      end
    end

    describe '#run_all' do
      subject { guard.run_all }
      let(:guard) do
        described_class.new(
          cookbook_paths: %w(cookbooks site-cookbooks),
          notification: notification
        )
      end
      let(:notification) { false }
      let(:runner) { double 'runner', run: true }
      before { allow(guard).to receive(:runner).and_return(runner) }

      it 'runs the runner with the cookbook paths' do
        expect(runner).to receive(:run).with(guard.options[:cookbook_paths]).and_return(true)
        subject
      end

      it 'informs the user' do
        expect(Guard::Compat::UI).to receive(:info).with('Linting all cookbooks')
        subject
      end

      include_examples 'handles runner results'
    end

    shared_examples 'lints specified cookbook files' do
      let(:guard) { described_class.new(notification: notification) }
      let(:notification) { false }
      let(:paths) { %w(recipes/default.rb attributes/default.rb) }
      let(:runner) { double 'runner', run: true }
      before { allow(guard).to receive(:runner).and_return(runner) }

      it 'runs the runner with the changed paths' do
        expect(runner).to receive(:run).with(paths).and_return(true)
        subject
      end

      it 'informs the user' do
        expect(Guard::Compat::UI).to receive(:info).with(
          'Linting: recipes/default.rb attributes/default.rb'
        )
        subject
      end

      include_examples 'handles runner results'
    end

    describe '#run_on_additions' do
      subject { guard.run_on_additions(paths) }
      include_examples 'lints specified cookbook files'
    end

    describe '#run_on_change' do
      subject { guard.run_on_change(paths) }
      include_examples 'lints specified cookbook files'
    end

    describe '#run_on_modifications' do
      subject { guard.run_on_modifications(paths) }
      include_examples 'lints specified cookbook files'
    end

    describe '#runner' do
      it 'returns a Runner' do
        expect(described_class.new.runner).to be_a_kind_of Foodcritic::Runner
      end

      it 'memoizes the runner' do
        guard = described_class.new
        expect(guard.runner).to equal guard.runner
      end

      it 'configured the runner with the guard options' do
        guard = described_class.new
        runner = guard.runner
        expect(runner.options).to include guard.options
      end
    end

    describe '#start' do
      it 'runs all on start if the :all_on_start option is set to true' do
        guard = described_class.new(all_on_start: true)
        expect(guard).to receive(:run_all)
        guard.start
      end

      it 'does not run all on start if the :all_on_start option is set to false' do
        guard = described_class.new(all_on_start: false)
        expect(guard).not_to receive(:run_all)
        guard.start
      end
    end

    describe '#respond_to' do
      it { is_expected.to respond_to :run_on_additions }
      it { is_expected.to respond_to :run_on_modifications }
      it { is_expected.not_to respond_to :run_on_change }
      it { is_expected.not_to respond_to :run_on_deletion }
    end
  end
end
