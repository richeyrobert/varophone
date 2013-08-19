class PbxUser < ActiveRecord::Base
  belongs_to :pbx
  belongs_to :sysadmin_user #add class User and foreign key here to tie to user table
  has_and_belongs_to_many :pbx_user_groups

  attr_accessible :dialable_username, :email, :first_name, :last_name, :sysadmin_login_enabled
end
