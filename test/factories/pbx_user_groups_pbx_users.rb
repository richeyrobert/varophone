# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pbx_user_groups_pbx_user, :class => 'PbxUserGroupsPbxUsers' do
    pbx_user_groups nil
    pbx_users nil
  end
end
