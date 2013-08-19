require 'test_helper'

class PbxesControllerTest < ActionController::TestCase
  setup do
    @pbx = pbxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pbxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pbx" do
    assert_difference('Pbx.count') do
      post :create, pbx: { name: @pbx.name }
    end

    assert_redirected_to pbx_path(assigns(:pbx))
  end

  test "should show pbx" do
    get :show, id: @pbx
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pbx
    assert_response :success
  end

  test "should update pbx" do
    put :update, id: @pbx, pbx: { name: @pbx.name }
    assert_redirected_to pbx_path(assigns(:pbx))
  end

  test "should destroy pbx" do
    assert_difference('Pbx.count', -1) do
      delete :destroy, id: @pbx
    end

    assert_redirected_to pbxes_path
  end
end
