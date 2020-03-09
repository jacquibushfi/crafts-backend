class CraftsController < ApplicationController
  

  # GET /crafts
  def index
    crafts = Craft.all
    render json: crafts
  end

  # GET /crafts/1
  def show
    render json: craft
  end

  # POST /crafts
  def create
    craft = Craft.new(craft_params)

    if craft.save
      render json: craft
    else
      render json: craft.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crafts/1
  def update
    if craft.update(craft_params)
      render json: craft
    else
      render json: craft.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crafts/1
  # def destroy
  #   craft.destroy
  # end

  private
    

    # Only allow a trusted parameter "white list" through.
    def craft_params
      params.require(:craft).permit(:name, :id)
    end
end
