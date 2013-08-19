# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pbx_user do
    pbx_id nil
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    dialable_username "MyString"
    sysadmin_user_id nil
    sysadmin_login_enabled false
  end
end
