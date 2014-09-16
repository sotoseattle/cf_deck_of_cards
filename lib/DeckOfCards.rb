
class DeckOfCards

  attr_reader :cards

  VALID_SUITES = %w{Clubs Diamonds Hearts Spades}
  VALID_RANKS  = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}

  def initialize
    @cards = VALID_SUITES.product(VALID_RANKS).map do |combination|
      suite_rank = {:suite=>combination[0], :rank=>combination[1]}
      Card.new(suite_rank)
    end
  end

end


