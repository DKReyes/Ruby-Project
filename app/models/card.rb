class Card < ApplicationRecord
  validates :name, presence: true
  validates :ability, presence: true
end
