require 'test_helper'

class PbxUserGroupsControllerTest < ActionController::TestCase
  setup do
    @pbx_user_group = pbx_user_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pbx_user_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pbx_user_group" do
    assert_difference('PbxUserGroup.count') do
      post :create, pbx_user_group: { domestic_long_distance_access: @pbx_user_group.domestic_long_distance_access, eavesdropping_access: @pbx_user_group.eavesdropping_access, internal_access: @pbx_user_group.internal_access, international_access: @pbx_user_group.international_access, local_access: @pbx_user_group.local_access, malicious_area_codes_access: @pbx_user_group.malicious_area_codes_access, name: @pbx_user_group.name, prompt_recording_access: @pbx_user_group.prompt_recording_access, super_access: @pbx_user_group.super_access, toll_numbers_access: @pbx_user_group.toll_numbers_access }
    end

    assert_redirected_to pbx_user_group_path(assigns(:pbx_user_group))
  end

  test "should show pbx_user_group" do
    get :show, id: @pbx_user_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pbx_user_group
    assert_response :success
  end

  test "should update pbx_user_group" do
    put :update, id: @pbx_user_group, pbx_user_group: { domestic_long_distance_access: @pbx_user_group.domestic_long_distance_access, eavesdropping_access: @pbx_user_group.eavesdropping_access, internal_access: @pbx_user_group.internal_access, international_access: @pbx_user_group.international_access, local_access: @pbx_user_group.local_access, malicious_area_codes_access: @pbx_user_group.malicious_area_codes_access, name: @pbx_user_group.name, prompt_recording_access: @pbx_user_group.prompt_recording_access, super_access: @pbx_user_group.super_access, toll_numbers_access: @pbx_user_group.toll_numbers_access }
    assert_redirected_to pbx_user_group_path(assigns(:pbx_user_group))
  end

  test "should destroy pbx_user_group" do
    assert_difference('PbxUserGroup.count', -1) do
      delete :destroy, id: @pbx_user_group
    end

    assert_redirected_to pbx_user_groups_path
  end
end
