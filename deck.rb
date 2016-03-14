require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize
    self.cards = []
    make_cards
    shuffle
  end

  def make_cards
    Card.suits.flat_map do |suit|
      Card.faces.map do |face|
        cards << Card.new(face, suit)
      end
    end
  end

  def shuffle
    cards.shuffle!
  end

  def draw
    cards.shift
  end

end

# deck = Deck.new
# p deck.cards
