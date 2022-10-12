class Card < ApplicationRecord
  validates :name, presence: true
  validates :ability, presence: true

  belongs_to :rarity
end
