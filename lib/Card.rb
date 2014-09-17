# Card: a simple object with two characteristics: suite and rank
# It knows at the class level which are the valid suites and ranks
class Card
  attr_reader :suite, :rank

  def initialize(options)
    suite = preformat(options[:suite])
    rank  = preformat(options[:rank])

    fail ArgumentError, 'Wrong Suite' unless Card.all_suites.include? suite
    fail ArgumentError, 'Wrong Rank'  unless Card.all_ranks.include? rank

    @suite = options[:suite]
    @rank  = options[:rank]
  end

  def preformat(str)
    str.to_s.downcase.capitalize
  end

  def self.all_suites
    %w(Clubs Diamonds Hearts Spades)
  end
  def self.all_ranks
    %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
  end
end
