# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    assigned_user nil
    name "MyString"
    station_label "MyString"
    time_zone nil
    paging_profile nil
    corporate_directory nil
    allow_provision_retrieval false
    device_type "MyString"
    device_mac_address "MyString"
    last_provisioned_time "2013-08-06 20:29:10"
    last_provisioned_from "MyString"
    allow_device_to_monitor false
  end
end
