class DeckController < ApplicationController
  def index
    @deck = Deck.new
    @deck.shuffle if params[:q] == 'shuffle'
  end
end
