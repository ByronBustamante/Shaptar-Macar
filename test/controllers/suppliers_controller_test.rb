require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { company_name: @supplier.company_name, country: @supplier.country, department_or_state: @supplier.department_or_state, email: @supplier.email, full_address: @supplier.full_address, mobile_1: @supplier.mobile_1, mobile_2: @supplier.mobile_2, nit: @supplier.nit, observations: @supplier.observations, supplier_code: @supplier.supplier_code, supplier_name: @supplier.supplier_name, telephone_1: @supplier.telephone_1, telephone_2: @supplier.telephone_2, web_page: @supplier.web_page }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    patch :update, id: @supplier, supplier: { company_name: @supplier.company_name, country: @supplier.country, department_or_state: @supplier.department_or_state, email: @supplier.email, full_address: @supplier.full_address, mobile_1: @supplier.mobile_1, mobile_2: @supplier.mobile_2, nit: @supplier.nit, observations: @supplier.observations, supplier_code: @supplier.supplier_code, supplier_name: @supplier.supplier_name, telephone_1: @supplier.telephone_1, telephone_2: @supplier.telephone_2, web_page: @supplier.web_page }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
