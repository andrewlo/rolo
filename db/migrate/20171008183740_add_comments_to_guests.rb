class AddCommentsToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :comments, :string
  end
end
