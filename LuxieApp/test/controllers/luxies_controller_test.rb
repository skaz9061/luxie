require 'test_helper'

class LuxiesControllerTest < ActionController::TestCase
  setup do
    @luxie = luxies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luxies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luxie" do
    assert_difference('Luxie.count') do
      post :create, luxie: { alert: @luxie.alert, promo: @luxie.promo }
    end

    assert_redirected_to luxie_path(assigns(:luxie))
  end

  test "should show luxie" do
    get :show, id: @luxie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luxie
    assert_response :success
  end

  test "should update luxie" do
    patch :update, id: @luxie, luxie: { alert: @luxie.alert, promo: @luxie.promo }
    assert_redirected_to luxie_path(assigns(:luxie))
  end

  test "should destroy luxie" do
    assert_difference('Luxie.count', -1) do
      delete :destroy, id: @luxie
    end

    assert_redirected_to luxies_path
  end
end
