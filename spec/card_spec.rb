require 'card'

describe Card do
  subject(:card) { Card.new("✭", 1, :red, :blue) }

  describe "#initialize" do
    it "takes four arguments and returns a Card object" do
      expect(card).to be_a(Card)
    end
  end

  describe "#symbol" do
    it "returns the correct symbol" do
      expect(card.symbol).to eq("✭")
    end
  end

  describe "#number" do
    it "returns the correct number" do
      expect(card.number).to eq(1)
    end
  end

  describe "#color" do
    it "returns the correct color" do
      expect(card.color).to eq(:red)
    end
  end

  describe "#fill" do
    it "returns the correct fill" do
      expect(card.fill).to eq(:blue)
    end
  end

  describe "::symbols" do
    it "returns an array of symbol keys" do
      expect(Card.symbols).to eq([:star, :diamond, :square])
    end
  end
end
