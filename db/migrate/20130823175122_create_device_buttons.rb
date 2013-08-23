class CreateDeviceButtons < ActiveRecord::Migration
  def change
    create_table :device_buttons do |t|
      t.string :button_label
      t.references :extension
      t.references :device
      t.integer :display_count

      t.timestamps
    end
    add_index :device_buttons, :extension_id
    add_index :device_buttons, :device_id
  end
end
