class AddColumnPrice < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :price, :integer
  end
end
