class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.integer :quantity
      t.integer :msrp
      t.integer :wsp
      t.string :sku
      t.integer :warehouse_id

      t.timestamps
    end
  end
end
