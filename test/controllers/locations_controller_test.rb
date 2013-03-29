require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { active: @location.active, address_line1: @location.address_line1, address_line2: @location.address_line2, atn1: @location.atn1, atn2: @location.atn2, atv1: @location.atv1, atv2: @location.atv2, city: @location.city, club_id: @location.club_id, country_id: @location.country_id, description: @location.description, latitude: @location.latitude, longitude: @location.longitude, name: @location.name, postal_code: @location.postal_code, resource_id: @location.resource_id, resource_type: @location.resource_type, state_province: @location.state_province }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { active: @location.active, address_line1: @location.address_line1, address_line2: @location.address_line2, atn1: @location.atn1, atn2: @location.atn2, atv1: @location.atv1, atv2: @location.atv2, city: @location.city, club_id: @location.club_id, country_id: @location.country_id, description: @location.description, latitude: @location.latitude, longitude: @location.longitude, name: @location.name, postal_code: @location.postal_code, resource_id: @location.resource_id, resource_type: @location.resource_type, state_province: @location.state_province }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
