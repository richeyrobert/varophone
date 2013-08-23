class Device < ActiveRecord::Base
  require 'tzinfo'

  belongs_to :assigned_user, class_name: "PbxUser"
  belongs_to :paging_profile
  belongs_to :corporate_directory
  has_and_belongs_to_many :extensions
  has_many :device_buttons #TODO: I might not need this association
  attr_accessible :allow_device_to_monitor, :allow_provision_retrieval, :device_mac_address, :device_type, :last_provisioned_from, :last_provisioned_time, :name, :station_label, :assigned_user_id, :time_zone, :paging_profile, :corporate_directory

end
