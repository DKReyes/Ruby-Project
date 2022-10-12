class CreateEffectTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :effect_types do |t|
      t.string :effect_type

      t.timestamps
    end
  end
end
