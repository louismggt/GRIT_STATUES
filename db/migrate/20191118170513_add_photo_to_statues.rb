class AddPhotoToStatues < ActiveRecord::Migration[5.2]
  def change
    add_column :statues, :photo, :string
  end
end
