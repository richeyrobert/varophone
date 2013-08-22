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
end
