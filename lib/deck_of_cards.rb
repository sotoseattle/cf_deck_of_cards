# Deck of Cards: a container object that holds the 52 cards of a poker deck
class DeckOfCards
  require_relative 'card'

  attr_reader :cards

  def initialize
    all_suite_rank_combinations = Card.all_suites.product(Card.all_ranks)

    @cards = all_suite_rank_combinations.map do |arr|
      Card.new(suite: arr[0], rank: arr[1])
    end
  end
end
