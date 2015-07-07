class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :rut
      t.integer :phone
      t.string :mail
      t.string :address
      t.references :workshop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
