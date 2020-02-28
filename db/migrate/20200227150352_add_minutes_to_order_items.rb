class AddMinutesToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :minutes, :integer
  end
end
