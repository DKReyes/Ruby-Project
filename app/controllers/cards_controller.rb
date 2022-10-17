class CardsController < ApplicationController
  def index
    @cards = Card.page(params[:page])
  end

  def show
    @card = Card.includes(:rarity).find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    wildcard_search2 = "%#{params[:rarity]}%"

    @cards = Card.where("name LIKE ? AND rarity_id LIKE ?", wildcard_search, wildcard_search2).page(params[:page])
  end
end
