class CreateDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :decks do |t|
      t.string :title

      t.references :card, null: false, foreign_key: true
      t.references :deck, null: false, foreign_key: true
      t.timestamps
    end
  end
end
