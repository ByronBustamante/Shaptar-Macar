class AddFotoProducto2ToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :foto2
  end
end
