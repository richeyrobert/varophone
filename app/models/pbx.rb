class Pbx < ActiveRecord::Base
  attr_accessible :name

  has_many :pbx_users
  has_many :pbx_user_groups
  has_many :phone_numbers
  has_many :devices
  has_many :extensions
  has_many :hold_musics
  has_many :sound_clips
  has_many :local_directories
  has_many :corporate_directories
  has_many :schedules
  
  has_one :permission
  has_one :system_setting

  has_and_belongs_to_many :users

end
