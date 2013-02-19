require 'test_helper'

class PydwgnsControllerTest < ActionController::TestCase
  setup do
    @pydwgn = pydwgns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pydwgns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pydwgn" do
    assert_difference('Pydwgn.count') do
      post :create, pydwgn: { latitude: @pydwgn.latitude, longitude: @pydwgn.longitude, name: @pydwgn.name, value: @pydwgn.value }
    end

    assert_redirected_to pydwgn_path(assigns(:pydwgn))
  end

  test "should show pydwgn" do
    get :show, id: @pydwgn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pydwgn
    assert_response :success
  end

  test "should update pydwgn" do
    put :update, id: @pydwgn, pydwgn: { latitude: @pydwgn.latitude, longitude: @pydwgn.longitude, name: @pydwgn.name, value: @pydwgn.value }
    assert_redirected_to pydwgn_path(assigns(:pydwgn))
  end

  test "should destroy pydwgn" do
    assert_difference('Pydwgn.count', -1) do
      delete :destroy, id: @pydwgn
    end

    assert_redirected_to pydwgns_path
  end
end
