module NumberRiddler
  module Encoders
    class Test
      def call(digit)
        (digit + 'a'.ord).chr
      end
    end
  end
end
