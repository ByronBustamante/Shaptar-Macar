require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { address: @customer.address, company_name: @customer.company_name, country: @customer.country, credit_in_quetzales: @customer.credit_in_quetzales, customer_code: @customer.customer_code, customer_name: @customer.customer_name, department_or_state: @customer.department_or_state, discount_percentage: @customer.discount_percentage, email: @customer.email, full: @customer.full, mobile_1: @customer.mobile_1, mobile_2: @customer.mobile_2, nit: @customer.nit, observations: @customer.observations, telephone_1: @customer.telephone_1, telephone_2: @customer.telephone_2, transportation: @customer.transportation, web_page: @customer.web_page }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { address: @customer.address, company_name: @customer.company_name, country: @customer.country, credit_in_quetzales: @customer.credit_in_quetzales, customer_code: @customer.customer_code, customer_name: @customer.customer_name, department_or_state: @customer.department_or_state, discount_percentage: @customer.discount_percentage, email: @customer.email, full: @customer.full, mobile_1: @customer.mobile_1, mobile_2: @customer.mobile_2, nit: @customer.nit, observations: @customer.observations, telephone_1: @customer.telephone_1, telephone_2: @customer.telephone_2, transportation: @customer.transportation, web_page: @customer.web_page }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
