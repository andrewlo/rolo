class RemoveNameFromGuests < ActiveRecord::Migration[5.1]
  def change
    remove_column :guests, :name, :string
  end
end
