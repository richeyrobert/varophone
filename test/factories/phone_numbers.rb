# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone_number do
    name "MyString"
    number "MyString"
    caller_id "MyString"
    block_caller_id false
    phone_number_type "MyString"
    call_endpoint "MyString"
    hold_music_id 1
    call_recording_location "MyString"
  end
end
