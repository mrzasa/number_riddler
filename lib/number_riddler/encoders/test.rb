module NumberRiddler
  module Encoders
    class Test
      def encode(digit)
        (digit + 'a'.ord).chr
      end
    end
  end
end
