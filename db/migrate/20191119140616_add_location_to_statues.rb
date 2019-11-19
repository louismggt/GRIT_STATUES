class AddLocationToStatues < ActiveRecord::Migration[5.2]
  def change
    add_column :statues, :location, :string
  end
end
