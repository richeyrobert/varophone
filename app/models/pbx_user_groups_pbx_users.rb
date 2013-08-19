class PbxUserGroupsPbxUsers < ActiveRecord::Base
  belongs_to :pbx_user_groups
  belongs_to :pbx_users
  # attr_accessible :title, :body
end
