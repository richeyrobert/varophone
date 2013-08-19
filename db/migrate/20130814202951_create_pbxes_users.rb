class CreatePbxesUsers < ActiveRecord::Migration
  def change
    create_table :pbxes_users do |t|
      t.belongs_to :pbx
      t.belongs_to :user

    end
    add_index :pbxes_users, :pbx_id
    add_index :pbxes_users, :user_id
  end
end
