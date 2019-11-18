class CreateStatues < ActiveRecord::Migration[5.2]
  def change
    create_table :statues do |t|
      t.string :category
      t.integer :surface
      t.text :description
      t.string :name
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
