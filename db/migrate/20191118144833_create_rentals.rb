class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, foreign_key: true
      t.references :statue, foreign_key: true

      t.timestamps
    end
  end
end
