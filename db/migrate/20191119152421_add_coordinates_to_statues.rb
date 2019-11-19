class AddCoordinatesToStatues < ActiveRecord::Migration[5.2]
  def change
    add_column :statues, :latitude, :float
    add_column :statues, :longitude, :float
  end
end
