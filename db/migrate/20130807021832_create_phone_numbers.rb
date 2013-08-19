class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.integer :pbx_id
      t.string :name
      t.string :number
      t.string :caller_id
      t.boolean :block_caller_id
      t.string :phone_number_type
      t.string :call_endpoint
      t.integer :hold_music_id
      t.string :call_recording_location

      t.timestamps
    end
  end
end
