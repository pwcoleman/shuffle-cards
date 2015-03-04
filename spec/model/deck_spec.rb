require 'rails_helper'

describe Deck do

  context 'before shuffling' do
    let(:deck) { Deck.new }

    it 'has 52 cards' do
      expect(deck.cards.size).to eql(52)
    end

    it 'has 4 suits' do
      expect(Deck::SUITS.size).to eql(4)
    end

    it 'has 13 ranks' do
      expect(Deck::RANKS.size).to eql(13)
    end

    it 'should be in order with first card being the 2 of Clubs' do
      expect(deck.cards.first.rank).to eql('2')
      expect(deck.cards.first.suit).to eql('clubs')
    end

    it 'should be in order with last card being the ace of Spades' do
      expect(deck.cards.last.rank).to eql('a')
      expect(deck.cards.last.suit).to eql('spades')
    end
  end

  context 'after shuffling' do
    let(:deck) { Deck.new }

    before do
      deck.shuffle
    end

    it 'has 52 cards' do
      expect(deck.cards.size).to eql(52)
    end

    it 'has 4 suits' do
      expect(Deck::SUITS.size).to eql(4)
    end

    it 'has 13 ranks' do
      expect(Deck::RANKS.size).to eql(13)
    end
  end
end