class User < ApplicationRecord
  validates :username, presence: true

  has_many :decks
  has_many :cards, through: :decks
end
