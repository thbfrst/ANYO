class AddAvailabilityToCandies < ActiveRecord::Migration[5.2]
  def change
    add_column :candies, :availability, :integer
  end
end
