class ChangeTimeZoneFromReferencesToStringOnDevices < ActiveRecord::Migration
  def up
    rename_column :devices, :time_zone_id, :time_zone
    change_column :devices, :time_zone, :string
  end

  def down
    change_column :devices, :time_zone, :integer
    rename_column :devices, :time_zone, :time_zone_id
  end
end
