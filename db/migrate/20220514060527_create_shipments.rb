class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.string :ship_to_name
      t.string :ship_to_address
      t.string :notes
      t.datetime :order_date
      t.integer :status

      t.timestamps
    end
  end
end
