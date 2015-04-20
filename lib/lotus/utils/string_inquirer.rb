module Lotus
  module Utils
    # Call this method Lotus.env.development?

    class StringInquirer < ::String
      # End of method
      END_OF_QUESTION = "?".freeze

      private
      def respond_to_missing?(m, include_private=false)
        m[-1] == END_OF_QUESTION
      end

      def method_missing(m, *args, &blk)
        if respond_to?(m)
          self == m[0..-2]
        else
          super
        end
      end
    end
  end
end
