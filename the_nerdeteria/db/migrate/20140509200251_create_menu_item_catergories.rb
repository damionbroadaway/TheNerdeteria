class CreateMenuItemCatergories < ActiveRecord::Migration
  def change
    create_table :menu_item_catergories do |t|
      t.string :name

      t.timestamps
    end
  end
end
