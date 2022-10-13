class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    wildcard_search2 = "%#{params[:rarity]}%"

    @cards = Card.where("name LIKE ? AND rarity_id LIKE ?", wildcard_search, wildcard_search2)
  end
end
