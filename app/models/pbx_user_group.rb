class PbxUserGroup < ActiveRecord::Base
  belongs_to :pbx
  has_and_belongs_to_many :pbx_users

  attr_accessible :domestic_long_distance_access, :eavesdropping_access, :internal_access, :international_access, :local_access, :malicious_area_codes_access, :name, :prompt_recording_access, :super_access, :toll_numbers_access
end
