class DeviceButton < ActiveRecord::Base
  belongs_to :device
  belongs_to :extension
  attr_accessible :button_label, :display_count, :device_id, :extension_id
end
