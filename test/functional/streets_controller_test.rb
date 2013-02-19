require 'test_helper'

class StreetsControllerTest < ActionController::TestCase
  setup do
    @street = streets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create street" do
    assert_difference('Street.count') do
      post :create, street: { animal_faeces: @street.animal_faeces, bin_count: @street.bin_count, business: @street.business, confectionary: @street.confectionary, construction: @street.construction, detritus: @street.detritus, dog_foul: @street.dog_foul, domestic: @street.domestic, drinks: @street.drinks, fast_food: @street.fast_food, fly_posting: @street.fly_posting, graffiti: @street.graffiti, latitude: @street.latitude, longitude: @street.longitude, name: @street.name, number_overflowing: @street.number_overflowing, other: @street.other, pedestrian_individual: @street.pedestrian_individual, postcode: @street.postcode, smoking: @street.smoking, vandalism: @street.vandalism, weeds: @street.weeds }
    end

    assert_redirected_to street_path(assigns(:street))
  end

  test "should show street" do
    get :show, id: @street
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @street
    assert_response :success
  end

  test "should update street" do
    put :update, id: @street, street: { animal_faeces: @street.animal_faeces, bin_count: @street.bin_count, business: @street.business, confectionary: @street.confectionary, construction: @street.construction, detritus: @street.detritus, dog_foul: @street.dog_foul, domestic: @street.domestic, drinks: @street.drinks, fast_food: @street.fast_food, fly_posting: @street.fly_posting, graffiti: @street.graffiti, latitude: @street.latitude, longitude: @street.longitude, name: @street.name, number_overflowing: @street.number_overflowing, other: @street.other, pedestrian_individual: @street.pedestrian_individual, postcode: @street.postcode, smoking: @street.smoking, vandalism: @street.vandalism, weeds: @street.weeds }
    assert_redirected_to street_path(assigns(:street))
  end

  test "should destroy street" do
    assert_difference('Street.count', -1) do
      delete :destroy, id: @street
    end

    assert_redirected_to streets_path
  end
end
