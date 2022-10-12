class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"

    @cards = Card.where("name LIKE ?", wildcard_search)
  end
end
