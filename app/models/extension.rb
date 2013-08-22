class Extension < ActiveRecord::Base
  has_and_belongs_to_many :devices
  attr_accessible :allow_message_review, :allow_new_callers_empty_queue, :alternate_mailbox_location, :announce_hold_time, :announce_new_participants, :attach_voicemail_message, :call_recording_location, :conference_admin_password, :conference_password, :confirm_pickup, :connect_timeout, :connection_delay, :delete_message_after_send, :dial_plan_xml, :dial_plan_xml, :email_to_fax_access_code, :email_to_fax_success_message, :escape_to_operator, :extension_dial_plan_xml, :fax_email_destination, :follow_device_forwards, :hold_music, :intercept_incoming_faxes, :intercom_enable, :message_email_address, :name, :number, :omit_from_directory, :outbound_external_callerid, :outbound_local_area_code, :outgoing_message_busy, :outgoing_message_temporary, :outgoing_message_unavailable, :periodic_announcement_message, :position_announcement_frequency, :position_announcement_rounding, :pre_call_announcement, :queue_max_callers, :queue_weight, :receiving_email_destination, :remove_callers_when_queue_no_agents, :report_caller_hold_time, :retry_wait_time, :ring_back, :ring_back, :ring_in_use, :ring_strategy, :ring_timeout, :say_callerid, :say_message_duration, :say_message_timestamp, :send_as_user, :send_email_notifications, :voicemail_box_password, :voicemail_time_zone, :wrap_up_time, :pbx_id

  scope :lines, where(type: "ExtensionLine")
  scope :ring_groups, where(type: "ExtensionRingGroup")
  scope :conference_rooms, where(type: "ExtensionConferenceRoom")
  scope :call_queues, where(type: "ExtensionCallQueue")
  scope :dial_plans, where(type: "ExtensionDialPlan")
  scope :shared_voicemail_boxes, where(type: "ExtensionSharedVoicemailBox")
  scope :virtual_fax_machines, where(type: "ExtensionVirtualFaxMachine")

  def show_friendly_type
    #will show the type of extension in a friendly readable format
    return_string = ""
    case type
    when "ExtensionLine"
      return_string = "Line"
    when "ExtensionRingGroup"
      return_string = "Ring Group"
    when "ExtensionConferenceRoom"
      return_string = "Conference Room"
    when "ExtensionCallQueue"
      return_string = "Call Queue"
    when "ExtensionDialPlan"
      return_string = "Dial Plan"
    when "ExtensionSharedVoicemailBox"
      return_string = "Shared Voicemail Boxes"
    when "ExtensionVirtualFaxMachine"
      return_string = "Virtual Fax Machine"
    else
      return_string = "EXTENSION TYPE NOT FOUND"
    end  
  end
end
