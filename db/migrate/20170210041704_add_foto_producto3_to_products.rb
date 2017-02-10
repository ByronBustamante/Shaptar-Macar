class AddFotoProducto3ToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :foto3
  end
end
