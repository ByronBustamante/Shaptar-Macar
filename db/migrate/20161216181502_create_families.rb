class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :family

      t.timestamps null: false
    end
  end
end
