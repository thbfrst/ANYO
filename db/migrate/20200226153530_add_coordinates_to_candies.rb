class AddCoordinatesToCandies < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :latitude, :float
    add_column :candies, :longitude, :float
  end
end
