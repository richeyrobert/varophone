# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device_button do
    button_label "MyString"
    extension_id nil
    display_count 1
  end
end
