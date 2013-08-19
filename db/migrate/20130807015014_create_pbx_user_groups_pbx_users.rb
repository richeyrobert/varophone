class CreatePbxUserGroupsPbxUsers < ActiveRecord::Migration
  def change
    create_table :pbx_user_groups_pbx_users do |t|
      t.belongs_to :pbx_user_group
      t.belongs_to :pbx_user

    end
    add_index :pbx_user_groups_pbx_users, :pbx_user_group_id
    add_index :pbx_user_groups_pbx_users, :pbx_user_id
  end
end
