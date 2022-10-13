class ApplicationController < ActionController::Base
  def application
    @cards = Card.includes(:rarity).all
    @rarity = Rarity.all
  end
end
