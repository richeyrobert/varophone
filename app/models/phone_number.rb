class PhoneNumber < ActiveRecord::Base
  belongs_to :pbx
  attr_accessible :block_caller_id, :call_endpoint, :call_recording_location, :caller_id, :hold_music_id, :name, :number, :phone_number_type
end
