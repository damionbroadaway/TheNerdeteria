class AddCategoryIdToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :categoryID, :integer
  end
end
