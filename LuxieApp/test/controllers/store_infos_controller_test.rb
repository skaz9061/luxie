require 'test_helper'

class StoreInfosControllerTest < ActionController::TestCase
  setup do
    @store_info = store_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_info" do
    assert_difference('StoreInfo.count') do
      post :create, store_info: { description: @store_info.description, email: @store_info.email, name: @store_info.name, phone_number: @store_info.phone_number }
    end

    assert_redirected_to store_info_path(assigns(:store_info))
  end

  test "should show store_info" do
    get :show, id: @store_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_info
    assert_response :success
  end

  test "should update store_info" do
    patch :update, id: @store_info, store_info: { description: @store_info.description, email: @store_info.email, name: @store_info.name, phone_number: @store_info.phone_number }
    assert_redirected_to store_info_path(assigns(:store_info))
  end

  test "should destroy store_info" do
    assert_difference('StoreInfo.count', -1) do
      delete :destroy, id: @store_info
    end

    assert_redirected_to store_infos_path
  end
end
