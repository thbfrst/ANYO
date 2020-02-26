class AddAddressToCandy < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :address, :string
  end
end
