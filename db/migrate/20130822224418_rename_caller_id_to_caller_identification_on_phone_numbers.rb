class RenameCallerIdToCallerIdentificationOnPhoneNumbers < ActiveRecord::Migration
  def up
    rename_column :phone_numbers, :caller_id, :caller_identification
  end

  def down
    rename_column :phone_numbers, :caller_identification, :caller_id
  end
end
