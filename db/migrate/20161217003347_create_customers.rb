class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_code
      t.integer :nit
      t.string :customer_name
      t.string :company_name
      t.string :country
      t.string :department_or_state
      t.string :full
      t.string :address
      t.integer :telephone_1
      t.integer :telephone_2
      t.integer :mobile_1
      t.integer :mobile_2
      t.string :email
      t.string :web_page
      t.string :transportation
      t.binary :credit_in_quetzales
      t.integer :discount_percentage
      t.text :observations

      t.timestamps null: false
    end
  end
end
