require 'test_helper'

class UserPermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_perm = user_perms(:one)
  end

  test "should get index" do
    get user_perms_url
    assert_response :success
  end

  test "should get new" do
    get new_user_perm_url
    assert_response :success
  end

  test "should create user_perm" do
    assert_difference('UserPerm.count') do
      post user_perms_url, params: { user_perm: { perm_id: @user_perm.perm_id, user_id: @user_perm.user_id } }
    end

    assert_redirected_to user_perm_url(UserPerm.last)
  end

  test "should show user_perm" do
    get user_perm_url(@user_perm)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_perm_url(@user_perm)
    assert_response :success
  end

  test "should update user_perm" do
    patch user_perm_url(@user_perm), params: { user_perm: { perm_id: @user_perm.perm_id, user_id: @user_perm.user_id } }
    assert_redirected_to user_perm_url(@user_perm)
  end

  test "should destroy user_perm" do
    assert_difference('UserPerm.count', -1) do
      delete user_perm_url(@user_perm)
    end

    assert_redirected_to user_perms_url
  end
end
