class LocationInWarehousesController < ApplicationController
  before_action :set_location_in_warehouse, only: [:show, :edit, :update, :destroy]

  # GET /location_in_warehouses
  # GET /location_in_warehouses.json
  def index
    @location_in_warehouses = LocationInWarehouse.all
  end

  # GET /location_in_warehouses/1
  # GET /location_in_warehouses/1.json
  def show
  end

  # GET /location_in_warehouses/new
  def new
    @location_in_warehouse = LocationInWarehouse.new
  end

  # GET /location_in_warehouses/1/edit
  def edit
  end

  # POST /location_in_warehouses
  # POST /location_in_warehouses.json
  def create
    @location_in_warehouse = LocationInWarehouse.new(location_in_warehouse_params)

    respond_to do |format|
      if @location_in_warehouse.save
        format.html { redirect_to @location_in_warehouse, notice: 'Location in warehouse was successfully created.' }
        format.json { render :show, status: :created, location: @location_in_warehouse }
      else
        format.html { render :new }
        format.json { render json: @location_in_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /location_in_warehouses/1
  # PATCH/PUT /location_in_warehouses/1.json
  def update
    respond_to do |format|
      if @location_in_warehouse.update(location_in_warehouse_params)
        format.html { redirect_to @location_in_warehouse, notice: 'Location in warehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @location_in_warehouse }
      else
        format.html { render :edit }
        format.json { render json: @location_in_warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_in_warehouses/1
  # DELETE /location_in_warehouses/1.json
  def destroy
    @location_in_warehouse.destroy
    respond_to do |format|
      format.html { redirect_to location_in_warehouses_url, notice: 'Location in warehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location_in_warehouse
      @location_in_warehouse = LocationInWarehouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_in_warehouse_params
      params.require(:location_in_warehouse).permit(:location)
    end
end
