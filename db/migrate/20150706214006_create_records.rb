class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.string :maintenance_detail
      t.references :car_file, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
