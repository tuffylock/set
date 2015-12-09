class Card
  SYMBOL_STRINGS = {
    :star => "✭",
    :diamond => "✦",
    :square => "◼"
  }

  def self.symbols
    SYMBOL_STRINGS.keys
  end

  attr_reader :symbol, :number, :color, :fill

  def initialize(symbol, number, color, fill)
    @symbol, @number, @color, @fill = symbol, number, color, fill
  end
end
