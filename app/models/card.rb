class Card < ApplicationRecord
  default_per_page

  validates :name, presence: true
  validates :ability, presence: true

  belongs_to :rarity

  has_many :decks
  has_many :users, through: :decks
end
