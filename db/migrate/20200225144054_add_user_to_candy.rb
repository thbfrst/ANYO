class AddUserToCandy < ActiveRecord::Migration[5.2]
  def change
    add_reference :candies, :user, null: false
  end
end
