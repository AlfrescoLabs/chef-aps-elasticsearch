require 'guard/foodcritic'

module Guard
  class Foodcritic
    class Runner
      attr_reader :options

      def initialize(options = {})
        @options = {
          cli: '--epic-fail any'
        }.merge(options)
      end

      def command(paths)
        ['foodcritic', @options[:cli], paths].flatten(1).join(' ')
      end

      def run(paths)
        system command(paths)
      end
    end
  end
end
