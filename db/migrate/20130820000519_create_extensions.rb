class CreateExtensions < ActiveRecord::Migration
  def change
    create_table :extensions do |t|
      t.string :number
      t.string :name
      t.boolean :omit_from_directory
      t.string :call_recording_location
      t.string :voicemail_time_zone
      t.boolean :allow_message_review
      t.string :escape_to_operator
      t.boolean :send_email_notifications
      t.boolean :attach_voicemail_message
      t.boolean :delete_message_after_send
      t.string :message_email_address
      t.boolean :say_message_timestamp
      t.boolean :say_callerid
      t.integer :say_message_duration
      t.string :outgoing_message_busy
      t.string :outgoing_message_unavailable
      t.string :outgoing_message_temporary
      t.string :alternate_mailbox_location
      t.integer :voicemail_box_password
      t.string :hold_music
      t.boolean :intercept_incoming_faxes
      t.string :fax_email_destination
      t.string :outbound_local_area_code
      t.string :outbound_external_callerid
      t.string :dial_plan_xml
      t.boolean :intercom_enable
      t.string :ring_back
      t.text :extension_dial_plan_xml
      t.boolean :ring_timeout
      t.boolean :follow_device_forwards
      t.boolean :confirm_pickup
      t.string :ring_back
      t.string :conference_password
      t.string :conference_admin_password
      t.boolean :announce_new_participants
      t.string :ring_strategy
      t.string :pre_call_announcement
      t.boolean :report_caller_hold_time
      t.integer :connection_delay
      t.integer :connect_timeout
      t.integer :retry_wait_time
      t.integer :wrap_up_time
      t.boolean :ring_in_use
      t.integer :queue_weight
      t.integer :queue_max_callers
      t.integer :position_announcement_frequency
      t.integer :position_announcement_rounding
      t.string :periodic_announcement_message
      t.string :announce_hold_time
      t.string :allow_new_callers_empty_queue
      t.boolean :remove_callers_when_queue_no_agents
      t.text :dial_plan_xml
      t.string :email_to_fax_access_code
      t.integer :send_as_user
      t.boolean :email_to_fax_success_message
      t.string :receiving_email_destination
      t.string :type

      t.timestamps
    end
  end
end
