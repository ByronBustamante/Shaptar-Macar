class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :supplier_code
      t.string :invoice_series
      t.integer :invoice_number
      t.date :purchase_date
      t.binary :total_purchase
      t.string :observations

      t.timestamps null: false
    end
  end
end
