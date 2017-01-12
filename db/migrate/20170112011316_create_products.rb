class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_code
      t.string :barcode
      t.string :product_name
      t.text :description
      t.date :purchase_date
      t.binary :cost_in_quetzales
      t.binary :sale_price
      t.integer :percentage_in_sale
      t.integer :number_of_articles
      t.string :name_supplier
      t.string :name_brand
      t.string :name_family
      t.string :name_location_in_warehouse

      t.timestamps null: false
    end
  end
end
