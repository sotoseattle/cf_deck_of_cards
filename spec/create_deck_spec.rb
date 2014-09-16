require 'spec_helper'

# As a player of a card game,
# I want a deck of 52 cards
# So that I can play a standard game of cards.

RSpec.describe DeckOfCards do

  context "#initialization" do
    let (:deck){DeckOfCards.new}

    it "creates a deck" do
      expect{DeckOfCards.new}.not_to raise_error
      expect(deck).to be_a(DeckOfCards)
    end

    it "composed of cards" do
      expect(deck.cards).to all(be_a(Card))
    end

    it "contains 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "no two cards have the same suite and rank" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end

    # it "each card corresponds to the combination between available
    #     ranks and suites" do
    #     DeckOfCards.VALID_SUITES.each do |suite|
    #       expect deck

    #     end
    # end

  end

end
