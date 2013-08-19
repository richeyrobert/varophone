class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.references :assigned_user
      t.string :name
      t.string :station_label
      t.references :time_zone
      t.references :paging_profile
      t.references :corporate_directory
      t.boolean :allow_provision_retrieval
      t.string :device_type
      t.string :device_mac_address
      t.timestamp :last_provisioned_time
      t.string :last_provisioned_from
      t.boolean :allow_device_to_monitor

      t.timestamps
    end
    add_index :devices, :assigned_user_id
    add_index :devices, :time_zone_id
    add_index :devices, :paging_profile_id
    add_index :devices, :corporate_directory_id
  end
end
