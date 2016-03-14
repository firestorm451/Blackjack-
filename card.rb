class Card

  attr_accessor :face, :suit, :value

  def initialize(face, suit)
    self.face = face
    self.suit = suit
    self.value = infer_value
  end

  def self.suits
    %w(Clubs Spades Hearts Diamonds)
  end

  def self.faces
    %w(2 3 4 5 6 7 8 9 10 J Q K A)
  end

  def infer_value
    if face.to_i > 0
      face.to_i
    else
      face_values[face.to_sym]
    end
  end

  def >(card)
    self.value > card.value
  end

   def face_values
     {
    :J => 10,
    :Q => 10,
    :K => 10,
    :A => 11
  }
  end


end
# deck = Card.new
