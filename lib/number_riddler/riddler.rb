module NumberRiddler
  class Riddler
    attr_reader :encoder

    def initialize(encoder: Encoder.new)
      @encoder = encoder
    end

    def encode(number)
      digitalize(number).map { |digit| encoder.call(digit) }
    end

    def digitalize(number)
      number.chars.map(&:to_i)
    end
  end
end
