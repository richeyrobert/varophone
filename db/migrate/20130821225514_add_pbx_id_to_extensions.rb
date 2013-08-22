class AddPbxIdToExtensions < ActiveRecord::Migration
  def up
    add_column :extensions, :pbx_id, :integer

    add_index :extensions, :pbx_id
  end

  def down
    remove_column :extensions, :pbx_id
  end
end
