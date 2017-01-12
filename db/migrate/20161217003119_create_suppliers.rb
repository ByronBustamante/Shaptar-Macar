class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :supplier_code
      t.integer :nit
      t.string :supplier_name
      t.string :company_name
      t.string :country
      t.string :department_or_state
      t.string :full_address
      t.integer :telephone_1
      t.integer :telephone_2
      t.integer :mobile_1
      t.integer :mobile_2
      t.string :email
      t.string :web_page
      t.text :observations

      t.timestamps null: false
    end
  end
end
