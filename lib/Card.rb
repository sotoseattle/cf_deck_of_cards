class Card
  attr_reader :suite, :rank

  VALID_SUITES = %w{Clubs Diamonds Hearts Spades}
  VALID_RANKS  = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}

  def initialize(options)
    suite = preformat(options[:suite])
    rank  = preformat(options[:rank])

    raise ArgumentError, "Wrong Suite" unless VALID_SUITES.include? suite
    raise ArgumentError, "Wrong Rank"  unless VALID_RANKS.include? rank

    @suite = options[:suite]
    @rank  = options[:rank]
  end

  def preformat(str)
    str.to_s.downcase.capitalize
  end
end

