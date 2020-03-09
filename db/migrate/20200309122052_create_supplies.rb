class CreateSupplies < ActiveRecord::Migration[6.0]
  def change
    create_table :supplies do |t|
      t.integer :craft_id
      t.string :description
      t.string :vendor
      t.float :price

      t.timestamps
    end
  end
end
