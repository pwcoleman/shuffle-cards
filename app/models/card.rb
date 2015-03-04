class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    validate_parameters
  end

  def to_s
    "#{ @rank.humanize } of #{ @suit.humanize }"
  end

  private

  def validate_parameters
    raise ArgumentError, 'invalid suit' unless Deck::SUITS.include?(@suit)
    raise ArgumentError, 'invalid rank' unless Deck::RANKS.include?(@rank)
  end
end