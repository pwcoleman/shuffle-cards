class Deck

  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = [ *'2'..'10', *%w{ j q k a }]

  attr_accessor :cards

  def initialize
    @cards = create_cards
  end

  def shuffle
    @cards.shuffle!
  end

  def create_cards
    SUITS.product(RANKS).map{ |card| Card.new(card.first, card.last) }
  end

end
