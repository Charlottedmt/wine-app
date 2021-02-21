class AddNameToWineMaker < ActiveRecord::Migration[6.0]
  def change
    add_column :wine_makers, :name, :string
  end
end
