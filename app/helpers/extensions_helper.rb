module ExtensionsHelper

  def icon_helper(data)
    case data
      when "ExtensionLine"
        "icon-phone-alt" #"big-icon-phone"
      when "ExtensionRingGroup"
        "icon-roundabout"
      when "ExtensionConferenceRoom"
        "icon-group"
      when "ExtensionCallQueue"
        "icon-history"
      when "ExtensionDialPlan"
        "icon-list"
      when "ExtensionSharedVoicemailBox"
        "icon-message-in"
      when "ExtensionVirtualFaxMachine"
        "icon-fax"
      when "Extension"
        "icon-earphone"
      else
    end
  end

  def is_active?(controller_name, action_name = "default")
    if controller_name == "extensions"
      case params[:action]
        when "extensions_line"
          "active"
        when "extensions_ring_group"
        else
      end
    end

        
    "active" if params[:controller] == controller_name
  end

  def edit_link_finder(extension_type, extension)
    #this helper will determine the edit link path depending on the extension type
    case extension_type
      when "ExtensionLine"
        edit_admin_extension_line_path(extension)
      when "ExtensionRingGroup"
        edit_admin_extension_ring_group_path(extension)
      when "ExtensionConferenceRoom"
        edit_admin_extension_conference_room_path(extension)
      when "ExtensionCallQueue"
        edit_admin_extension_call_queue_path(extension)
      when "ExtensionDialPlan"
        edit_admin_extension_dial_plan_path(extension)
      when "ExtensionSharedVoicemailBox"
        edit_admin_extension_voicemail_box_path(extension)
      when "ExtensionVirtualFaxMachine"
        edit_admin_extension_virtual_fax_machine_path(extension)
      when "Extension"
        edit_admin_extension_path(extension)
      else
    end
  end

  def new_link_finder(action)
    case action
      when "extension_lines"
        new_admin_extension_line_path
      when "extension_ring_groups"
        new_admin_extension_ring_group_path
      when "extension_conference_rooms"
        new_admin_extension_conference_room_path
      when "extension_call_queues"
        new_admin_extension_call_queue_path
      when "extension_dial_plans"
        new_admin_extension_dial_plan_path
      when "extension_shared_voicemail_boxes"
        new_admin_extension_voicemail_box_path
      when "extension_virtual_fax_machines"
        new_admin_extension_virtual_fax_machine_path
      when "index"
        new_admin_extension_path
      else
    end
  end

end
