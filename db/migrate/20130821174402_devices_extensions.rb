class DevicesExtensions < ActiveRecord::Migration
  def up
    create_table :devices_extensions, id: false do |t|
      t.integer :device_id
      t.integer :extension_id
    end

    add_index :devices_extensions, :device_id
    add_index :devices_extensions, :extension_id
  end

  def down
    remove_table :devices_extensions
  end
end
