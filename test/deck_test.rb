require_relative 'test_helper'

describe Deck do
  before do
    @deck = Deck.new
  end

  describe "Constructor method" do
    it "can be instantiated" do
      expect(@deck).must_be_instance_of Deck
    end

    it "has 52 cards in a deck" do
      expect(@deck.cards.length).must_equal 52
    end
  end

  describe "Draw method" do
    it "can be called" do
      expect(@deck).must_respond_to :draw
    end

    it "can draw a card from the deck" do
      expect(@deck.draw).must_be_instance_of Card
      expect(@deck.cards.length).must_equal 51
    end

    it "can return a deck of 52 cards" do
      52.times do
        expect(@deck.draw).must_be_instance_of Card
      end
    end
  end

  describe "Shuffle method" do
    it "can be called" do
      expect(@deck).must_respond_to :shuffle
    end
  end

  describe "Count method" do
    it "can return the number of cards in the deck" do
      19.times do
        @deck.draw
      end

      expect(@deck.count).must_equal 33
    end
  end
end