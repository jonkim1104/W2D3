require 'rspec'
require 'card'

describe "card" do 
  subject(:card) {Card.new(:spades, 4)}
  describe "#initialize" do
    it "initializes the suit of card" do
      expect(card.suit).to eq(:spades)
    end
    it "initializes the value of card" do
      expect(card.value).to eq(4)
    end
  end
end
