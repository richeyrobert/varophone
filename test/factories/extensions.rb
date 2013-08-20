# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :extension do
    number "MyString"
    name "MyString"
    omit_from_directory false
    call_recording_location "MyString"
    voicemail_time_zone "MyString"
    allow_message_review false
    escape_to_operator "MyString"
    send_email_notifications false
    attach_voicemail_message false
    delete_message_after_send false
    message_email_address "MyString"
    say_message_timestamp false
    say_callerid false
    say_message_duration 1
    outgoing_message_busy "MyString"
    outgoing_message_unavailable "MyString"
    outgoing_message_temporary "MyString"
    alternate_mailbox_location "MyString"
    voicemail_box_password 1
    hold_music "MyString"
    intercept_incoming_faxes false
    fax_email_destination "MyString"
    outbound_local_area_code "MyString"
    outbound_external_callerid "MyString"
    dial_plan_xml "MyString"
    intercom_enable false
    ring_back "MyString"
    extension_dial_plan_xml "MyText"
    ring_timeout false
    follow_device_forwards false
    confirm_pickup false
    ring_back "MyString"
    conference_password "MyString"
    conference_admin_password "MyString"
    announce_new_participants false
    ring_strategy "MyString"
    pre_call_announcement "MyString"
    report_caller_hold_time false
    connection_delay 1
    connect_timeout 1
    retry_wait_time 1
    wrap_up_time 1
    ring_in_use false
    queue_weight 1
    queue_max_callers 1
    position_announcement_frequency 1
    position_announcement_rounding 1
    periodic_announcement_message "MyString"
    announce_hold_time "MyString"
    allow_new_callers_empty_queue "MyString"
    remove_callers_when_queue_no_agents false
    dial_plan_xml "MyText"
    email_to_fax_access_code "MyString"
    send_as_user 1
    email_to_fax_success_message false
    receiving_email_destination "MyString"
  end
end
