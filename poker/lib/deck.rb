require_relative 'card'

SUITS = [:spades, :hearts, :clubs, :diamonds]

class Deck 
  
  attr_reader :cards
  def initialize
    @cards = self.make_deck.shuffle
  end
  
  def make_deck
    result = []
    suits.each do |suit|
      result += make_cards(suit)
    end
    result 
  end
  
  def make_cards(suit)
    suit_cards = []
    (2..14).each do |value|
      suit_cards << Card.new(suit, value)
    end
    suit_cards
  end
end