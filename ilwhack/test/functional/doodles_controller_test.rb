require 'test_helper'

class DoodlesControllerTest < ActionController::TestCase
  setup do
    @doodle = doodles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doodles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doodle" do
    assert_difference('Doodle.count') do
      post :create, doodle: { latitude: @doodle.latitude, longitude: @doodle.longitude }
    end

    assert_redirected_to doodle_path(assigns(:doodle))
  end

  test "should show doodle" do
    get :show, id: @doodle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doodle
    assert_response :success
  end

  test "should update doodle" do
    put :update, id: @doodle, doodle: { latitude: @doodle.latitude, longitude: @doodle.longitude }
    assert_redirected_to doodle_path(assigns(:doodle))
  end

  test "should destroy doodle" do
    assert_difference('Doodle.count', -1) do
      delete :destroy, id: @doodle
    end

    assert_redirected_to doodles_path
  end
end
