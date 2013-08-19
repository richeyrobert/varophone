class PbxesUsers < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :pbx
  belongs_to :user
  
end
