class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :year
      t.string :grapes
      t.text :description
      t.references :wine_maker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
