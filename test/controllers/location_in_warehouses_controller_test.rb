require 'test_helper'

class LocationInWarehousesControllerTest < ActionController::TestCase
  setup do
    @location_in_warehouse = location_in_warehouses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_in_warehouses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_in_warehouse" do
    assert_difference('LocationInWarehouse.count') do
      post :create, location_in_warehouse: { location: @location_in_warehouse.location }
    end

    assert_redirected_to location_in_warehouse_path(assigns(:location_in_warehouse))
  end

  test "should show location_in_warehouse" do
    get :show, id: @location_in_warehouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_in_warehouse
    assert_response :success
  end

  test "should update location_in_warehouse" do
    patch :update, id: @location_in_warehouse, location_in_warehouse: { location: @location_in_warehouse.location }
    assert_redirected_to location_in_warehouse_path(assigns(:location_in_warehouse))
  end

  test "should destroy location_in_warehouse" do
    assert_difference('LocationInWarehouse.count', -1) do
      delete :destroy, id: @location_in_warehouse
    end

    assert_redirected_to location_in_warehouses_path
  end
end
