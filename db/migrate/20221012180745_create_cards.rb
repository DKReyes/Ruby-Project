class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :ability
      t.string :photo
      t.string :ele
      t.string :power

      t.timestamps
    end
  end
end
