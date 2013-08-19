# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pbx_user_group do
    pbx nil
    name "MyString"
    internal_access false
    local_access false
    domestic_long_distance_access false
    international_access false
    toll_numbers_access false
    malicious_area_codes_access false
    super_access false
    eavesdropping_access false
    prompt_recording_access false
  end
end
