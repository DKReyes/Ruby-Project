class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :type
      t.text :image
      t.string :attributes
      t.text :stats

      t.timestamps
    end
  end
end
