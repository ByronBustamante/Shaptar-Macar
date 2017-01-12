class CreateTransportations < ActiveRecord::Migration
  def change
    create_table :transportations do |t|
      t.string :transportation

      t.timestamps null: false
    end
  end
end
