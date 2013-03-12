require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: { active: @club.active, aha_registered: @club.aha_registered, alternate_meeting_address: @club.alternate_meeting_address, alternate_meeting_datetime: @club.alternate_meeting_datetime, alternate_meeting_state: @club.alternate_meeting_state, alternate_meeting_zip: @club.alternate_meeting_zip, area: @club.area, description: @club.description, dues: @club.dues, founded: @club.founded, meeting_address: @club.meeting_address, meeting_dates: @club.meeting_dates, meeting_state: @club.meeting_state, meeting_time: @club.meeting_time, meeting_zip: @club.meeting_zip, name: @club.name, state: @club.state }
    end

    assert_redirected_to club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    patch :update, id: @club, club: { active: @club.active, aha_registered: @club.aha_registered, alternate_meeting_address: @club.alternate_meeting_address, alternate_meeting_datetime: @club.alternate_meeting_datetime, alternate_meeting_state: @club.alternate_meeting_state, alternate_meeting_zip: @club.alternate_meeting_zip, area: @club.area, description: @club.description, dues: @club.dues, founded: @club.founded, meeting_address: @club.meeting_address, meeting_dates: @club.meeting_dates, meeting_state: @club.meeting_state, meeting_time: @club.meeting_time, meeting_zip: @club.meeting_zip, name: @club.name, state: @club.state }
    assert_redirected_to club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to clubs_path
  end
end
