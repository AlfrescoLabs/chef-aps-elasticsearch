#
# Author:: Daniel DeLeo (<dan@chef.io>)
# Copyright:: Copyright 2010-2016, Chef Software Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require "spec_helper"

describe Chef::RunStatus do
  before do
    @node = Chef::Node.new
    @events = Chef::EventDispatch::Dispatcher.new
    @run_context = Chef::RunContext.new(@node, {}, @events)
    @run_status = Chef::RunStatus.new(@node, @events)
  end

  describe "before the run context has been set" do
    it "converts to a hash" do
      @run_status.to_hash
    end
  end

  describe "when the run context has been set" do
    before do
      @run_status.run_context = @run_context
    end

    it "has a run context" do
      expect(@run_status.run_context).to equal(@run_context)
    end

    it "provides access to the run context's node" do
      expect(@run_status.node).to equal(@node)
    end

    it "converts to a hash" do
      expect(@run_status.to_hash[:node]).to equal(@node)
      expect(@run_status.to_hash[:success]).to be_truthy
    end

    describe "after it has recorded timing information" do
      before do
        @start_time = Time.new
        @end_time = @start_time + 23
        allow(Time).to receive(:now).and_return(@start_time, @end_time)
        @run_status.start_clock
        @run_status.stop_clock
      end

      it "records the start time of the run" do
        expect(@run_status.start_time).to eq(@start_time)
      end

      it "records the end time of the run" do
        expect(@run_status.end_time).to eq(@end_time)
      end

      it "gives the elapsed time of the chef run" do
        expect(@run_status.elapsed_time).to eq(23)
      end

      it "includes timing information in its hash form" do
        expect(@run_status.to_hash[:start_time]).to eq(@start_time)
        expect(@run_status.to_hash[:end_time]).to eq(@end_time)
        expect(@run_status.to_hash[:elapsed_time]).to eq(23)
      end

    end

    describe "with resources in the resource_collection" do
      before do
        @all_resources = [Chef::Resource::Cat.new("whiskers"), Chef::Resource::ZenMaster.new("dtz")]
        @run_context.resource_collection.all_resources.replace(@all_resources)
      end

      it "lists all resources" do
        expect(@run_status.all_resources).to eq(@all_resources)
      end

      it "has no updated resources" do
        expect(@run_status.updated_resources).to be_empty
      end

      it "includes the list of all resources in its hash form" do
        expect(@run_status.to_hash[:all_resources]).to eq(@all_resources)
        expect(@run_status.to_hash[:updated_resources]).to be_empty
      end

      describe "and some have been updated" do
        before do
          @all_resources.first.updated_by_last_action true
        end

        it "lists the updated resources" do
          expect(@run_status.updated_resources).to eq([@all_resources.first])
        end

        it "includes the list of updated resources in its hash form" do
          expect(@run_status.to_hash[:updated_resources]).to eq([@all_resources.first])
        end
      end
    end

    describe "when the run failed" do
      before do
        @exception = Exception.new("just testing")
        @backtrace = caller
        @exception.set_backtrace(@backtrace)
        @run_status.exception = @exception
      end

      it "stores the exception" do
        expect(@run_status.exception).to equal(@exception)
      end

      it "stores the backtrace" do
        expect(@run_status.backtrace).to eq(@backtrace)
      end

      it "says the run was not successful" do
        expect(@run_status.success?).to be_falsey
        expect(@run_status.failed?).to be_truthy
      end

      it "converts to a hash including the exception information" do
        expect(@run_status.to_hash[:success]).to be_falsey
        expect(@run_status.to_hash[:exception]).to eq("Exception: just testing")
        expect(@run_status.to_hash[:backtrace]).to eq(@backtrace)
      end
    end
  end
end
