require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { bio: @member.bio, birthday: @member.birthday, cell_number: @member.cell_number, contact_id: @member.contact_id, email: @member.email, email: @member.email, favorite_styles: @member.favorite_styles, first_name: @member.first_name, future_brews: @member.future_brews, gender: @member.gender, hobbies: @member.hobbies, home_number: @member.home_number, last_name: @member.last_name, location_id: @member.location_id, middle_name: @member.middle_name, occupation: @member.occupation, on_tap: @member.on_tap, primary: @member.primary, started_brewing: @member.started_brewing }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { bio: @member.bio, birthday: @member.birthday, cell_number: @member.cell_number, contact_id: @member.contact_id, email: @member.email, email: @member.email, favorite_styles: @member.favorite_styles, first_name: @member.first_name, future_brews: @member.future_brews, gender: @member.gender, hobbies: @member.hobbies, home_number: @member.home_number, last_name: @member.last_name, location_id: @member.location_id, middle_name: @member.middle_name, occupation: @member.occupation, on_tap: @member.on_tap, primary: @member.primary, started_brewing: @member.started_brewing }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
