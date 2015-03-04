require 'rails_helper'

RSpec.describe DeckController, type: :controller do

  describe "GET #index" do
    let(:initial_cards) { Deck.new.cards.map(&:to_s) }

    it 'initially cards are not shuffled' do
      get :index
      expect(assigns(:deck).cards.map(&:to_s)).to eql(initial_cards)
    end

    it 'cards are shuffled when shuffle parameter passed' do
      get :index, q: 'shuffle'
      expect(assigns(:deck).cards.map(&:to_s)).not_to eql(initial_cards)
    end
  end

end
