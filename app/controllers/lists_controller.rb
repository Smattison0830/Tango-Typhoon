class ListsController < ApplicationController
    before_action :set_list, only: [:create, :edit, :update, :destroy]

    def index
      @lists = policy_scope(List).order(created_at: :desc)
    end
  
    # def show; end
  
    # def water
    #   @pot.update(pot_params)
    #   redirect_to pot_path
    # end
  
    def create
      @list = List.new(list_params)
    #   @plant = Plant.find(params[:pot][:plant_id])
    #   @pot.plant = @plant
      @list.user = current_user
    #   @pot.last_watered = Time.now
      authorize @list
      @list.save
      redirect_to list_path
    end
  
    def edit
    end
  
    def update
      @list.update(list_params)
    #   @pot.photos.attach(photos_params["photos"]) if photos_params["photos"]
    #   if pot_params[:last_watered].present?
    #     redirect_back fallback_location: pot_path(@pot)
    #   else
    #     redirect_to pot_path(@pot)
    #   end
    end
  
    def destroy
      @list.destroy
      redirect_to lists_path
    end
  
    private
  
    # def set_pot
    #   @pot = Pot.find(params[:id])
    #   authorize @pot
    # end
  
    def list_params
      params.require(:list).permit(:name)
    end
  
    # def photos_params
    #   params.require(:pot).permit(photos: [])
    # end 
end
