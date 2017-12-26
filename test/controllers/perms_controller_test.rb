require 'test_helper'

class PermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perm = perms(:one)
  end

  test "should get index" do
    get perms_url
    assert_response :success
  end

  test "should get new" do
    get new_perm_url
    assert_response :success
  end

  test "should create perm" do
    assert_difference('Perm.count') do
      post perms_url, params: { perm: { description: @perm.description } }
    end

    assert_redirected_to perm_url(Perm.last)
  end

  test "should show perm" do
    get perm_url(@perm)
    assert_response :success
  end

  test "should get edit" do
    get edit_perm_url(@perm)
    assert_response :success
  end

  test "should update perm" do
    patch perm_url(@perm), params: { perm: { description: @perm.description } }
    assert_redirected_to perm_url(@perm)
  end

  test "should destroy perm" do
    assert_difference('Perm.count', -1) do
      delete perm_url(@perm)
    end

    assert_redirected_to perms_url
  end
end
