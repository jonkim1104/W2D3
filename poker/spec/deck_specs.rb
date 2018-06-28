require 'rspec'
require 'deck'

describe "deck" do 
  describe "#make_deck" do 
    it "verifies length of deck to be 52 cards" do 
      expect(deck.cards.length).to eq(52)
    end
    it "ensures that the deck is randomized" do 
      expect(deck.cards).to_not eq(deck.cards.sort)
    end
  end
end