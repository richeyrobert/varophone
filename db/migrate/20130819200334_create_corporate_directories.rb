class CreateCorporateDirectories < ActiveRecord::Migration
  def change
    create_table :corporate_directories do |t|
      t.string :name

      t.timestamps
    end
  end
end
