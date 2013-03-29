require 'test_helper'

class ClubsMembersControllerTest < ActionController::TestCase
  setup do
    @clubs_member = clubs_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clubs_member" do
    assert_difference('ClubsMember.count') do
      post :create, clubs_member: { club_id: @clubs_member.club_id, member_id: @clubs_member.member_id }
    end

    assert_redirected_to clubs_member_path(assigns(:clubs_member))
  end

  test "should show clubs_member" do
    get :show, id: @clubs_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clubs_member
    assert_response :success
  end

  test "should update clubs_member" do
    patch :update, id: @clubs_member, clubs_member: { club_id: @clubs_member.club_id, member_id: @clubs_member.member_id }
    assert_redirected_to clubs_member_path(assigns(:clubs_member))
  end

  test "should destroy clubs_member" do
    assert_difference('ClubsMember.count', -1) do
      delete :destroy, id: @clubs_member
    end

    assert_redirected_to clubs_members_path
  end
end
