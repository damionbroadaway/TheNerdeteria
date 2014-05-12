json.array!(@menu_item_catergories) do |menu_item_catergory|
  json.extract! menu_item_catergory, :id, :name
  json.url menu_item_catergory_url(menu_item_catergory, format: :json)
end
