# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError.new("Invalid suit.") unless [:hearts, :spades, :clubs, :diamonds].include? suit
    raise ArgumentError.new("Invalid value.") if value < 1 || value > 13

    @value = value
    @suit = suit
  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end
end
