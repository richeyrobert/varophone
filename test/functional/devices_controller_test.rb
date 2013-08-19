require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, device: { allow_device_to_monitor: @device.allow_device_to_monitor, allow_provision_retrieval: @device.allow_provision_retrieval, device_mac_address: @device.device_mac_address, device_type: @device.device_type, last_provisioned_from: @device.last_provisioned_from, last_provisioned_time: @device.last_provisioned_time, name: @device.name, station_label: @device.station_label }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, id: @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device
    assert_response :success
  end

  test "should update device" do
    put :update, id: @device, device: { allow_device_to_monitor: @device.allow_device_to_monitor, allow_provision_retrieval: @device.allow_provision_retrieval, device_mac_address: @device.device_mac_address, device_type: @device.device_type, last_provisioned_from: @device.last_provisioned_from, last_provisioned_time: @device.last_provisioned_time, name: @device.name, station_label: @device.station_label }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, id: @device
    end

    assert_redirected_to devices_path
  end
end
