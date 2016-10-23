require 'test_helper'

class HoursSchedulesControllerTest < ActionController::TestCase
  setup do
    @hours_schedule = hours_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_schedule" do
    assert_difference('HoursSchedule.count') do
      post :create, hours_schedule: { close: @hours_schedule.close, days: @hours_schedule.days, open: @hours_schedule.open }
    end

    assert_redirected_to hours_schedule_path(assigns(:hours_schedule))
  end

  test "should show hours_schedule" do
    get :show, id: @hours_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hours_schedule
    assert_response :success
  end

  test "should update hours_schedule" do
    patch :update, id: @hours_schedule, hours_schedule: { close: @hours_schedule.close, days: @hours_schedule.days, open: @hours_schedule.open }
    assert_redirected_to hours_schedule_path(assigns(:hours_schedule))
  end

  test "should destroy hours_schedule" do
    assert_difference('HoursSchedule.count', -1) do
      delete :destroy, id: @hours_schedule
    end

    assert_redirected_to hours_schedules_path
  end
end
