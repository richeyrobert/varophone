class CreatePbxUsers < ActiveRecord::Migration
  def change
    create_table :pbx_users do |t|
      t.integer :pbx_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dialable_username
      t.integer :sysadmin_user_id
      t.boolean :sysadmin_login_enabled

      t.timestamps
    end
    add_index :pbx_users, :pbx_id
    add_index :pbx_users, :sysadmin_user_id
  end
end
