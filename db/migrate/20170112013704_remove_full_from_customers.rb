class RemoveFullFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :full, :string
  end
end
