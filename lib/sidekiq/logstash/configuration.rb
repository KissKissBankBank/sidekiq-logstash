module Sidekiq
  module Logstash
    class Configuration
      attr_accessor :custom_options, :filter_args

      def initialize
        @filter_args = []
      end

      # Added to ensure custom_options is a Proc
      def custom_options=(proc)
        raise ArgumentError, 'Argument must be a Proc.' unless proc.is_a?(Proc)
        @custom_options = proc
      end
    end
  end
end