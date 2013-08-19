require 'test_helper'

class PagingProfilesControllerTest < ActionController::TestCase
  setup do
    @paging_profile = paging_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paging_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paging_profile" do
    assert_difference('PagingProfile.count') do
      post :create, paging_profile: { name: @paging_profile.name, off_hook_paging_interrupt: @paging_profile.off_hook_paging_interrupt, paging_realm: @paging_profile.paging_realm }
    end

    assert_redirected_to paging_profile_path(assigns(:paging_profile))
  end

  test "should show paging_profile" do
    get :show, id: @paging_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paging_profile
    assert_response :success
  end

  test "should update paging_profile" do
    put :update, id: @paging_profile, paging_profile: { name: @paging_profile.name, off_hook_paging_interrupt: @paging_profile.off_hook_paging_interrupt, paging_realm: @paging_profile.paging_realm }
    assert_redirected_to paging_profile_path(assigns(:paging_profile))
  end

  test "should destroy paging_profile" do
    assert_difference('PagingProfile.count', -1) do
      delete :destroy, id: @paging_profile
    end

    assert_redirected_to paging_profiles_path
  end
end
