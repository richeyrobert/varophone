require 'test_helper'

class PhoneNumbersControllerTest < ActionController::TestCase
  setup do
    @phone_number = phone_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_number" do
    assert_difference('PhoneNumber.count') do
      post :create, phone_number: { block_caller_id: @phone_number.block_caller_id, call_endpoint: @phone_number.call_endpoint, call_recording_location: @phone_number.call_recording_location, caller_id: @phone_number.caller_id, hold_music_id: @phone_number.hold_music_id, name: @phone_number.name, number: @phone_number.number, phone_number_type: @phone_number.phone_number_type }
    end

    assert_redirected_to phone_number_path(assigns(:phone_number))
  end

  test "should show phone_number" do
    get :show, id: @phone_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_number
    assert_response :success
  end

  test "should update phone_number" do
    put :update, id: @phone_number, phone_number: { block_caller_id: @phone_number.block_caller_id, call_endpoint: @phone_number.call_endpoint, call_recording_location: @phone_number.call_recording_location, caller_id: @phone_number.caller_id, hold_music_id: @phone_number.hold_music_id, name: @phone_number.name, number: @phone_number.number, phone_number_type: @phone_number.phone_number_type }
    assert_redirected_to phone_number_path(assigns(:phone_number))
  end

  test "should destroy phone_number" do
    assert_difference('PhoneNumber.count', -1) do
      delete :destroy, id: @phone_number
    end

    assert_redirected_to phone_numbers_path
  end
end
