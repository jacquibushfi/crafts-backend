class SuppliesController < ApplicationController
  before_action :set_craft

  # GET /supplies
  def index
    supplies = @craft.supplies
    render json: supplies
  end

  # GET /supplies/1
  def show
    supply = Supply.find_by(id: params[:craft_id])
    render json: supply
  end

  # POST /supplies
  def create
    supply = @craft.supplies.new(supply_params)

    if supply.save
      render json: supply
    else
      render json: supply.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /supplies/1
  def update
    if supply.update(supply_params)
      render json: supply
    else
      render json: supply.errors, status: :unprocessable_entity
    end
  end

  # DELETE /supplies/1
  def destroy
    supply.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_craft
      @craft = Craft.find(params[:craft_id])
    end

    # Only allow a trusted parameter "white list" through.
    def supply_params
      params.require(:supply).permit(:craft_id, :description, :vendor, :price, :id)
    end
end
