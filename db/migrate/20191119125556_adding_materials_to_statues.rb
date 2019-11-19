class AddingMaterialsToStatues < ActiveRecord::Migration[5.2]
  def change
    add_column :statues, :material, :string
  end
end
