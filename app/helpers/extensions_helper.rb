module ExtensionsHelper

  def icon_helper(data)
    case data
      when "ExtensionLine"
        "icon-phone-alt" #"big-icon-phone"
      when "ExtensionRingGroup"
        "icon-iphone-transfer"
      when "ExtensionConferenceRoom"
        "big-icon-iphone-shake"
      when "ExtensionCallQueue"
        "big-icon-iphone-shake"
      when "ExtensionDialPlan"
        "big-icon-iphone-shake"
      when "ExtensionSharedVoicemailBox"
        "big-icon-iphone-shake"
      when "Extension"
        "big-icon-iphone-shake"
      else
    end
  end
end
