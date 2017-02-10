class AddCopiaFacturaToPurchases < ActiveRecord::Migration
  def change
    add_attachment :purchases, :factura
  end
end
