class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :card_name
      t.string :card_type
      t.string :card_image
      t.string :attributes
      t.string :effect_type
      t.string :type
      t.string :stats

      t.timestamps
    end
  end
end
