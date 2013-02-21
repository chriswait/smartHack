require 'test_helper'

class WardValuesControllerTest < ActionController::TestCase
  setup do
    @ward_value = ward_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ward_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ward_value" do
    assert_difference('WardValue.count') do
      post :create, ward_value: { recorded: @ward_value.recorded, value: @ward_value.value }
    end

    assert_redirected_to ward_value_path(assigns(:ward_value))
  end

  test "should show ward_value" do
    get :show, id: @ward_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ward_value
    assert_response :success
  end

  test "should update ward_value" do
    put :update, id: @ward_value, ward_value: { recorded: @ward_value.recorded, value: @ward_value.value }
    assert_redirected_to ward_value_path(assigns(:ward_value))
  end

  test "should destroy ward_value" do
    assert_difference('WardValue.count', -1) do
      delete :destroy, id: @ward_value
    end

    assert_redirected_to ward_values_path
  end
end
