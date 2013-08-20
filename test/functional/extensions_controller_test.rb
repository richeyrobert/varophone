require 'test_helper'

class ExtensionsControllerTest < ActionController::TestCase
  setup do
    @extension = extensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extension" do
    assert_difference('Extension.count') do
      post :create, extension: { allow_message_review: @extension.allow_message_review, allow_new_callers_empty_queue: @extension.allow_new_callers_empty_queue, alternate_mailbox_location: @extension.alternate_mailbox_location, announce_hold_time: @extension.announce_hold_time, announce_new_participants: @extension.announce_new_participants, attach_voicemail_message: @extension.attach_voicemail_message, call_recording_location: @extension.call_recording_location, conference_admin_password: @extension.conference_admin_password, conference_password: @extension.conference_password, confirm_pickup: @extension.confirm_pickup, connect_timeout: @extension.connect_timeout, connection_delay: @extension.connection_delay, delete_message_after_send: @extension.delete_message_after_send, dial_plan_xml: @extension.dial_plan_xml, dial_plan_xml: @extension.dial_plan_xml, email_to_fax_access_code: @extension.email_to_fax_access_code, email_to_fax_success_message: @extension.email_to_fax_success_message, escape_to_operator: @extension.escape_to_operator, extension_dial_plan_xml: @extension.extension_dial_plan_xml, fax_email_destination: @extension.fax_email_destination, follow_device_forwards: @extension.follow_device_forwards, hold_music: @extension.hold_music, intercept_incoming_faxes: @extension.intercept_incoming_faxes, intercom_enable: @extension.intercom_enable, message_email_address: @extension.message_email_address, name: @extension.name, number: @extension.number, omit_from_directory: @extension.omit_from_directory, outbound_external_callerid: @extension.outbound_external_callerid, outbound_local_area_code: @extension.outbound_local_area_code, outgoing_message_busy: @extension.outgoing_message_busy, outgoing_message_temporary: @extension.outgoing_message_temporary, outgoing_message_unavailable: @extension.outgoing_message_unavailable, periodic_announcement_message: @extension.periodic_announcement_message, position_announcement_frequency: @extension.position_announcement_frequency, position_announcement_rounding: @extension.position_announcement_rounding, pre_call_announcement: @extension.pre_call_announcement, queue_max_callers: @extension.queue_max_callers, queue_weight: @extension.queue_weight, receiving_email_destination: @extension.receiving_email_destination, remove_callers_when_queue_no_agents: @extension.remove_callers_when_queue_no_agents, report_caller_hold_time: @extension.report_caller_hold_time, retry_wait_time: @extension.retry_wait_time, ring_back: @extension.ring_back, ring_back: @extension.ring_back, ring_in_use: @extension.ring_in_use, ring_strategy: @extension.ring_strategy, ring_timeout: @extension.ring_timeout, say_callerid: @extension.say_callerid, say_message_duration: @extension.say_message_duration, say_message_timestamp: @extension.say_message_timestamp, send_as_user: @extension.send_as_user, send_email_notifications: @extension.send_email_notifications, voicemail_box_password: @extension.voicemail_box_password, voicemail_time_zone: @extension.voicemail_time_zone, wrap_up_time: @extension.wrap_up_time }
    end

    assert_redirected_to extension_path(assigns(:extension))
  end

  test "should show extension" do
    get :show, id: @extension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extension
    assert_response :success
  end

  test "should update extension" do
    put :update, id: @extension, extension: { allow_message_review: @extension.allow_message_review, allow_new_callers_empty_queue: @extension.allow_new_callers_empty_queue, alternate_mailbox_location: @extension.alternate_mailbox_location, announce_hold_time: @extension.announce_hold_time, announce_new_participants: @extension.announce_new_participants, attach_voicemail_message: @extension.attach_voicemail_message, call_recording_location: @extension.call_recording_location, conference_admin_password: @extension.conference_admin_password, conference_password: @extension.conference_password, confirm_pickup: @extension.confirm_pickup, connect_timeout: @extension.connect_timeout, connection_delay: @extension.connection_delay, delete_message_after_send: @extension.delete_message_after_send, dial_plan_xml: @extension.dial_plan_xml, dial_plan_xml: @extension.dial_plan_xml, email_to_fax_access_code: @extension.email_to_fax_access_code, email_to_fax_success_message: @extension.email_to_fax_success_message, escape_to_operator: @extension.escape_to_operator, extension_dial_plan_xml: @extension.extension_dial_plan_xml, fax_email_destination: @extension.fax_email_destination, follow_device_forwards: @extension.follow_device_forwards, hold_music: @extension.hold_music, intercept_incoming_faxes: @extension.intercept_incoming_faxes, intercom_enable: @extension.intercom_enable, message_email_address: @extension.message_email_address, name: @extension.name, number: @extension.number, omit_from_directory: @extension.omit_from_directory, outbound_external_callerid: @extension.outbound_external_callerid, outbound_local_area_code: @extension.outbound_local_area_code, outgoing_message_busy: @extension.outgoing_message_busy, outgoing_message_temporary: @extension.outgoing_message_temporary, outgoing_message_unavailable: @extension.outgoing_message_unavailable, periodic_announcement_message: @extension.periodic_announcement_message, position_announcement_frequency: @extension.position_announcement_frequency, position_announcement_rounding: @extension.position_announcement_rounding, pre_call_announcement: @extension.pre_call_announcement, queue_max_callers: @extension.queue_max_callers, queue_weight: @extension.queue_weight, receiving_email_destination: @extension.receiving_email_destination, remove_callers_when_queue_no_agents: @extension.remove_callers_when_queue_no_agents, report_caller_hold_time: @extension.report_caller_hold_time, retry_wait_time: @extension.retry_wait_time, ring_back: @extension.ring_back, ring_back: @extension.ring_back, ring_in_use: @extension.ring_in_use, ring_strategy: @extension.ring_strategy, ring_timeout: @extension.ring_timeout, say_callerid: @extension.say_callerid, say_message_duration: @extension.say_message_duration, say_message_timestamp: @extension.say_message_timestamp, send_as_user: @extension.send_as_user, send_email_notifications: @extension.send_email_notifications, voicemail_box_password: @extension.voicemail_box_password, voicemail_time_zone: @extension.voicemail_time_zone, wrap_up_time: @extension.wrap_up_time }
    assert_redirected_to extension_path(assigns(:extension))
  end

  test "should destroy extension" do
    assert_difference('Extension.count', -1) do
      delete :destroy, id: @extension
    end

    assert_redirected_to extensions_path
  end
end
