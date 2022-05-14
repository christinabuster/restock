class CreateShipmentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :shipment_details do |t|
      t.integer :shipment_id
      t.integer :item_id
      t.integer :quantity
      t.integer :requested_quantity

      t.timestamps
    end
  end
end
