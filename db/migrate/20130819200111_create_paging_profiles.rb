class CreatePagingProfiles < ActiveRecord::Migration
  def change
    create_table :paging_profiles do |t|
      t.string :name
      t.boolean :off_hook_paging_interrupt
      t.string :paging_realm

      t.timestamps
    end
  end
end
