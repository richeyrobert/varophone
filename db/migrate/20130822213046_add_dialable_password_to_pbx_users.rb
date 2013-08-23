class AddDialablePasswordToPbxUsers < ActiveRecord::Migration
  def up
    add_column :pbx_users, :dialable_password, :string
  end

  def down
    remove_column :pbx_users, :dialable_password
  end
end
