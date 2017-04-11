module NumberRiddler
  module Encoders


    class Flexible
      def initialize
        @code_book = {}
      end

      def add(what)
        what.each do |digit, values|
          values = [ values ] unless values.is_a? Array
          @code_book[digit] ||= []
          @code_book[digit].concat values
        end
      end

      def encode(digit)
        dispatch @code_book[digit], digit
      end

      private

      def dispatch(descriptions, digit)
        desc = descriptions.sample
        if desc.is_a? Proc
          return desc.call digit
        end
        return desc
      end
    end


  end
end
