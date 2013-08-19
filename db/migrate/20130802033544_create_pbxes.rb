class CreatePbxes < ActiveRecord::Migration
  def change
    create_table :pbxes do |t|
      t.string :name

      t.timestamps
    end
  end
end
