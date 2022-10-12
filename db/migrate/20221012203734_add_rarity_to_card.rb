class AddRarityToCard < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :rarity, null: false, foreign_key: true
  end
end
