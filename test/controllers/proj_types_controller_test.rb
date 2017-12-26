require 'test_helper'

class ProjTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proj_type = proj_types(:one)
  end

  test "should get index" do
    get proj_types_url
    assert_response :success
  end

  test "should get new" do
    get new_proj_type_url
    assert_response :success
  end

  test "should create proj_type" do
    assert_difference('ProjType.count') do
      post proj_types_url, params: { proj_type: { description: @proj_type.description, proj_type_id: @proj_type.proj_type_id, service_code: @proj_type.service_code } }
    end

    assert_redirected_to proj_type_url(ProjType.last)
  end

  test "should show proj_type" do
    get proj_type_url(@proj_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_proj_type_url(@proj_type)
    assert_response :success
  end

  test "should update proj_type" do
    patch proj_type_url(@proj_type), params: { proj_type: { description: @proj_type.description, proj_type_id: @proj_type.proj_type_id, service_code: @proj_type.service_code } }
    assert_redirected_to proj_type_url(@proj_type)
  end

  test "should destroy proj_type" do
    assert_difference('ProjType.count', -1) do
      delete proj_type_url(@proj_type)
    end

    assert_redirected_to proj_types_url
  end
end
