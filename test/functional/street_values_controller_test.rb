require 'test_helper'

class StreetValuesControllerTest < ActionController::TestCase
  setup do
    @street_value = street_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:street_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create street_value" do
    assert_difference('StreetValue.count') do
      post :create, street_value: { animal_faeces: @street_value.animal_faeces, bin_count: @street_value.bin_count, business: @street_value.business, confectionary: @street_value.confectionary, construction: @street_value.construction, detritus: @street_value.detritus, dog_foul: @street_value.dog_foul, domestic: @street_value.domestic, drinks: @street_value.drinks, fast_food: @street_value.fast_food, fly_posting: @street_value.fly_posting, graffiti: @street_value.graffiti, number_overflowing: @street_value.number_overflowing, other: @street_value.other, pedestrian_individual: @street_value.pedestrian_individual, recorded: @street_value.recorded, smoking: @street_value.smoking, vandalism: @street_value.vandalism, weeds: @street_value.weeds }
    end

    assert_redirected_to street_value_path(assigns(:street_value))
  end

  test "should show street_value" do
    get :show, id: @street_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @street_value
    assert_response :success
  end

  test "should update street_value" do
    put :update, id: @street_value, street_value: { animal_faeces: @street_value.animal_faeces, bin_count: @street_value.bin_count, business: @street_value.business, confectionary: @street_value.confectionary, construction: @street_value.construction, detritus: @street_value.detritus, dog_foul: @street_value.dog_foul, domestic: @street_value.domestic, drinks: @street_value.drinks, fast_food: @street_value.fast_food, fly_posting: @street_value.fly_posting, graffiti: @street_value.graffiti, number_overflowing: @street_value.number_overflowing, other: @street_value.other, pedestrian_individual: @street_value.pedestrian_individual, recorded: @street_value.recorded, smoking: @street_value.smoking, vandalism: @street_value.vandalism, weeds: @street_value.weeds }
    assert_redirected_to street_value_path(assigns(:street_value))
  end

  test "should destroy street_value" do
    assert_difference('StreetValue.count', -1) do
      delete :destroy, id: @street_value
    end

    assert_redirected_to street_values_path
  end
end
