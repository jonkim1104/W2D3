require 'rspec'
require 'deck'

describe "deck" do 
  describe "#make_deck" do 
    it "verifies length of deck to be 52 cards" do 
      expect(deck.cards.length).to eq(52)
    end
    
  describe "shuffle" do 
    it "ensures that shuffled deck differs from original" do 
      expect(deck.shuffle).to_not eq(deck)
    end
  end

  
end