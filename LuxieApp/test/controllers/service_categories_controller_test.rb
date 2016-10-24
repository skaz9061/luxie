require 'test_helper'

class ServiceCategoriesControllerTest < ActionController::TestCase
  setup do
    @service_category = service_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_category" do
    assert_difference('ServiceCategory.count') do
      post :create, service_category: { display_order: @service_category.display_order, name: @service_category.name, note: @service_category.note }
    end

    assert_redirected_to luxie_service_category_path(assigns(:service_category))
  end

  test "should show service_category" do
    get :show, id: @service_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_category
    assert_response :success
  end

  test "should update service_category" do
    patch :update, id: @service_category, service_category: { display_order: @service_category.display_order, name: @service_category.name, note: @service_category.note }
    assert_redirected_to luxie_service_category_path(assigns(:service_category))
  end

  test "should destroy service_category" do
    assert_difference('ServiceCategory.count', -1) do
      delete :destroy, id: @service_category
    end

    assert_redirected_to luxie_service_categories_path
  end
end
