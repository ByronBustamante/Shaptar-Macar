class AddFotoProducto4ToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :foto4
  end
end
