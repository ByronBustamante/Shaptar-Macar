require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { barcode: @product.barcode, cost_in_quetzales: @product.cost_in_quetzales, description: @product.description, name_brand: @product.name_brand, name_family: @product.name_family, name_location_in_warehouse: @product.name_location_in_warehouse, name_supplier: @product.name_supplier, number_of_articles: @product.number_of_articles, percentage_in_sale: @product.percentage_in_sale, product_code: @product.product_code, product_name: @product.product_name, purchase_date: @product.purchase_date, sale_price: @product.sale_price }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { barcode: @product.barcode, cost_in_quetzales: @product.cost_in_quetzales, description: @product.description, name_brand: @product.name_brand, name_family: @product.name_family, name_location_in_warehouse: @product.name_location_in_warehouse, name_supplier: @product.name_supplier, number_of_articles: @product.number_of_articles, percentage_in_sale: @product.percentage_in_sale, product_code: @product.product_code, product_name: @product.product_name, purchase_date: @product.purchase_date, sale_price: @product.sale_price }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
