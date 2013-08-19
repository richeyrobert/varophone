class Device < ActiveRecord::Base
  belongs_to :assigned_user
  belongs_to :time_zone
  belongs_to :paging_profile
  belongs_to :corporate_directory
  attr_accessible :allow_device_to_monitor, :allow_provision_retrieval, :device_mac_address, :device_type, :last_provisioned_from, :last_provisioned_time, :name, :station_label
end
