class AddUserToCandies < ActiveRecord::Migration[5.2]
  def change
    add_reference :candies, :user, foreign_key: true
  end
end
