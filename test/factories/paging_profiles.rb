# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :paging_profile do
    name "MyString"
    off_hook_paging_interrupt false
    paging_realm "MyString"
  end
end
