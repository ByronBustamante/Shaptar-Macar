class AddFotoProductoToProducts < ActiveRecord::Migration
  def change
    add_attachment :products, :foto1
  end
end
