class AddRestaurantIdToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :restaurantID, :integer
  end
end
