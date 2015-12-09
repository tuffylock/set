require 'card'

class Deck
  def self.fresh_deck
    params = Card.symbols.product([1, 2, 3], [:purp,:red,:green],[:white,:grey,:brown])
    cards = params.map do |param|
      Card.new(*param)
    end
    Deck.new(cards)
  end

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def size
    @cards.size
  end
end

describe Deck do
  describe "#initialize" do
    it "takes an array and returns an instance of Deck" do
      deck = Deck.new([])

      expect(deck).to be_an_instance_of(Deck)
    end
  end

  describe "::fresh_deck" do
    let(:deck) { Deck.fresh_deck }

    it "returns an instance of Deck" do
      expect(deck).to be_a(Deck)
    end

    it "has 81 unique Cards" do
      deduped_deck = deck
        .cards
        .map { |card| [card.symbol, card.number, card.color, card.fill] }
        .uniq
      expect(deck.size).to eq(81)
      expect(deduped_deck.size).to eq(81)
      expect(deck.cards).to all( be_a(Card) )
    end
  end
end
