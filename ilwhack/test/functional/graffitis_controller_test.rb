require 'test_helper'

class GraffitisControllerTest < ActionController::TestCase
  setup do
    @graffiti = graffitis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graffitis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graffiti" do
    assert_difference('Graffiti.count') do
      post :create, graffiti: { latitude: @graffiti.latitude, longitude: @graffiti.longitude }
    end

    assert_redirected_to graffiti_path(assigns(:graffiti))
  end

  test "should show graffiti" do
    get :show, id: @graffiti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graffiti
    assert_response :success
  end

  test "should update graffiti" do
    put :update, id: @graffiti, graffiti: { latitude: @graffiti.latitude, longitude: @graffiti.longitude }
    assert_redirected_to graffiti_path(assigns(:graffiti))
  end

  test "should destroy graffiti" do
    assert_difference('Graffiti.count', -1) do
      delete :destroy, id: @graffiti
    end

    assert_redirected_to graffitis_path
  end
end
