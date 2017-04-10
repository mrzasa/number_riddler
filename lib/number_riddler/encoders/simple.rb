module NumberRiddler
  module Encoders
    class Simple
      CODE_BOOK = {
        '0' => "nothing at all",
        '1' => "first digit of year of Grunwald battle",
        '2' => "first digit of e number",
        '3' => 'first digit of pi number',
        '4' => 'number of strings in a fiddle',
        '5' => 'current major version of Rails',
        '6' => '2*3',
        '7' => '...years in Tibet',
        '8' => '2**3',
        '9' => 'number of fields in tic-tac-toe',
      }

      def call(digit)
        CODE_BOOK[digit.to_s]
      end
    end
  end
end
