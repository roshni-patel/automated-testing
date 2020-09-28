# card.rb
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError.new("Invalid suit.") unless VALID_SUITS.include? suit
    raise ArgumentError.new("Invalid value.") if value < 1 || value > 13

    @value = value
    @suit = suit
  end

  def face_card(value)
    case value
    when "Ace"
      1
    when "Jack"
      11
    when "Queen"
      12
    when "King"
      13
    else
      value
    end
    return value
  end

  def to_s
    return "#{face_card(value)} of #{suit.to_s}"
  end
end
