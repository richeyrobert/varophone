require 'test_helper'

class PbxUsersControllerTest < ActionController::TestCase
  setup do
    @pbx_user = pbx_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pbx_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pbx_user" do
    assert_difference('PbxUser.count') do
      post :create, pbx_user: { dialable_username: @pbx_user.dialable_username, email: @pbx_user.email, first_name: @pbx_user.first_name, last_name: @pbx_user.last_name, sysadmin_login_enabled: @pbx_user.sysadmin_login_enabled }
    end

    assert_redirected_to pbx_user_path(assigns(:pbx_user))
  end

  test "should show pbx_user" do
    get :show, id: @pbx_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pbx_user
    assert_response :success
  end

  test "should update pbx_user" do
    put :update, id: @pbx_user, pbx_user: { dialable_username: @pbx_user.dialable_username, email: @pbx_user.email, first_name: @pbx_user.first_name, last_name: @pbx_user.last_name, sysadmin_login_enabled: @pbx_user.sysadmin_login_enabled }
    assert_redirected_to pbx_user_path(assigns(:pbx_user))
  end

  test "should destroy pbx_user" do
    assert_difference('PbxUser.count', -1) do
      delete :destroy, id: @pbx_user
    end

    assert_redirected_to pbx_users_path
  end
end
