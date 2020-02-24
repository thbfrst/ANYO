class AddColumnComposition < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :composition, :string
  end
end
