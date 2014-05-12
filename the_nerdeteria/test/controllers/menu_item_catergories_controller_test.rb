require 'test_helper'

class MenuItemCatergoriesControllerTest < ActionController::TestCase
  setup do
    @menu_item_catergory = menu_item_catergories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_item_catergories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_item_catergory" do
    assert_difference('MenuItemCatergory.count') do
      post :create, menu_item_catergory: { name: @menu_item_catergory.name }
    end

    assert_redirected_to menu_item_catergory_path(assigns(:menu_item_catergory))
  end

  test "should show menu_item_catergory" do
    get :show, id: @menu_item_catergory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_item_catergory
    assert_response :success
  end

  test "should update menu_item_catergory" do
    patch :update, id: @menu_item_catergory, menu_item_catergory: { name: @menu_item_catergory.name }
    assert_redirected_to menu_item_catergory_path(assigns(:menu_item_catergory))
  end

  test "should destroy menu_item_catergory" do
    assert_difference('MenuItemCatergory.count', -1) do
      delete :destroy, id: @menu_item_catergory
    end

    assert_redirected_to menu_item_catergories_path
  end
end
