class AddingSurfacesToStatues < ActiveRecord::Migration[5.2]
  def change
    add_column :statues, :length, :integer
    add_column :statues, :width, :integer
    add_column :statues, :height, :integer
    add_column :statues, :weight, :integer
  end
end
