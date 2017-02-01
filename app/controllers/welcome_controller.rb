class WelcomeController < ApplicationController
  def index
    @contacts = Contact.all
    @contact = Contact.new
  end

  def productos
    @products = Product.all
    @product = Product.new
    @brands = Brand.all
    @brand = Brand.new
  end

  def proveedores
    @suppliers = Supplier.all
    @supplier = Supplier.new
  end

  def compras
    @purchases = Purchase.all
    @purchase = Purchase.new
  end

  def clientes
    @customers = Customer.all
    @customer = Customer.new
  end
end
