class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.integer :current_quantity
      t.decimal :msrp
      t.decimal :wsp
      t.string :sku

      t.timestamps
    end
  end
end
