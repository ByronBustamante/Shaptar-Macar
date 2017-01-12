class CreateLocationInWarehouses < ActiveRecord::Migration
  def change
    create_table :location_in_warehouses do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
