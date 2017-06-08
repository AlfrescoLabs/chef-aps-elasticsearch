require 'guard/compat/test/helper'
require 'guard/foodcritic/runner'

module Guard
  RSpec.describe Foodcritic::Runner do
    describe '#options' do
      it 'remembers the initialized options' do
        options = { foo: 'bar' }
        expect(described_class.new(options).options).to include options
      end

      it "[:cli] defaults to '--epic-fail any'" do
        expect(described_class.new.options[:cli]).to eq('--epic-fail any')
      end
    end

    describe '#command' do
      let(:runner) { described_class.new }
      let(:paths) { %w(recipes/default.rb attributes/default.rb) }
      subject { runner.command(paths) }

      it 'calls the foodcritic executable' do
        is_expected.to start_with 'foodcritic'
      end

      it 'passes the given paths to the foodcritic executable' do
        is_expected.to end_with paths.join(' ')
      end

      it 'includes the cli option' do
        is_expected.to include runner.options[:cli]
      end
    end

    describe '#run' do
      let(:runner) { described_class.new }
      let(:command) { double 'command' }
      before { allow(runner).to receive(:command).and_return(command) }

      it 'generates the command with the given paths and runs it' do
        paths = %w(recipes/default.rb attributes/default.rb)
        expect(runner).to receive(:system).with(command)
        runner.run(paths)
      end

      it 'returns true when foodcritic suceeds' do
        allow(runner).to receive(:system).and_return(true)
        expect(runner.run([])).to be true
      end

      it 'returns false when foodcritic finds fault' do
        allow(runner).to receive(:system).and_return(false)
        expect(runner.run([])).to be false
      end
    end
  end
end
