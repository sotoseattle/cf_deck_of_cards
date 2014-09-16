require 'spec_helper'

# As a developer,
# I want to create a card with a particular suit and rank
# So that I can build a deck with the created card.

RSpec.describe Card do

  context "#initialization" do
    VALID_SUITES = %w{Clubs Diamonds Hearts Spades}
    VALID_RANKS = %w{Ace 2 3 4 5 6 7 8 9 10 Jack Queen King}

    it "can be created given a suit and rank" do
      expect(Card.new(:suite=>"Hearts", :rank=>"Ace")).to be_a Card
    end

    context "there is a fixed set of suites: #{VALID_SUITES}" do
      it "must have a valid suite to be created" do
        VALID_SUITES.each do |suite|
          expect{ Card.new(:suite=>suite, :rank=>"Ace") }.not_to raise_error
        end
      end
      it "yet admits a suite with wrong case" do
        expect{ Card.new(:suite=>"heArTs", :rank=>3) }.not_to raise_error
      end
      it "fails if the suite is invalid" do
        expect{ Card.new(:suite=>"Potatoes", :rank=>"Ace") }.to raise_error
      end
    end

    context "there is a fixed set of ranks: #{VALID_RANKS}" do
      it "must have a valid rank to be created" do
        VALID_RANKS.each do |rank|
          expect{ Card.new(:suite=>"Hearts", :rank=>rank) }.not_to raise_error
        end
      end
      it "admits a rank in numerical form" do
        expect{ Card.new(:suite=>"Hearts", :rank=>3) }.not_to raise_error
      end
      it "admits a rank with wrong case" do
        expect{ Card.new(:suite=>"Hearts", :rank=>"kING") }.not_to raise_error
      end
      it "fails if the rank is invalid" do
        expect{ Card.new(:suite=>"Hearts", :rank=>"A") }.to raise_error
      end
    end

    context "A Queen of Hearts card knows her suite and rank" do
      let(:queen_hearts){ Card.new(:suite=>"Hearts", :rank=>"Queen") }
      specify { expect(queen_hearts.rank).to eq("Queen") }
      specify { expect(queen_hearts.suite).to eq("Hearts") }
    end
  end


end
