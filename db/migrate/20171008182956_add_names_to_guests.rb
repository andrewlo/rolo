class AddNamesToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :first_name, :string
    add_column :guests, :last_name, :string
    add_column :guests, :dietary_restrictions, :string
  end
end
