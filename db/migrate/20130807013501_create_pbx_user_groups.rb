class CreatePbxUserGroups < ActiveRecord::Migration
  def change
    create_table :pbx_user_groups do |t|
      t.references :pbx
      t.string :name
      t.boolean :internal_access
      t.boolean :local_access
      t.boolean :domestic_long_distance_access
      t.boolean :international_access
      t.boolean :toll_numbers_access
      t.boolean :malicious_area_codes_access
      t.boolean :super_access
      t.boolean :eavesdropping_access
      t.boolean :prompt_recording_access

      t.timestamps
    end
    add_index :pbx_user_groups, :pbx_id
  end
end
