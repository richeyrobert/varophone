require 'test_helper'

class CorporateDirectoriesControllerTest < ActionController::TestCase
  setup do
    @corporate_directory = corporate_directories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corporate_directories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corporate_directory" do
    assert_difference('CorporateDirectory.count') do
      post :create, corporate_directory: { name: @corporate_directory.name }
    end

    assert_redirected_to corporate_directory_path(assigns(:corporate_directory))
  end

  test "should show corporate_directory" do
    get :show, id: @corporate_directory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corporate_directory
    assert_response :success
  end

  test "should update corporate_directory" do
    put :update, id: @corporate_directory, corporate_directory: { name: @corporate_directory.name }
    assert_redirected_to corporate_directory_path(assigns(:corporate_directory))
  end

  test "should destroy corporate_directory" do
    assert_difference('CorporateDirectory.count', -1) do
      delete :destroy, id: @corporate_directory
    end

    assert_redirected_to corporate_directories_path
  end
end
