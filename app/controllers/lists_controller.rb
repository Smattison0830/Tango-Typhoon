class ListsController < ApplicationController
    before_action :set_list, only: [:create, :show, :edit, :update, :destroy]

    def index
      default_lists = List.where(["id = ?", "1"])
      user_lists = policy_scope(List).order(created_at: :desc)
      @lists = default_lists + user_lists
    end

    def show
      @list = List.find(params[:id])
    end
  
    def create
      @list = List.new(list_params)
      @list.user = current_user
      authorize @list
      @list.save
      redirect_to lists_path
    end
  
    def edit
    end
  
    def update
      @list.update(list_params)
 
    end
  
    def destroy
      @list.destroy
      redirect_to lists_path
    end
  
    private
  
    def set_list
      @list = List.find(params[:id])
      authorize @list
    end
  
    def list_params
      params.require(:list).permit(:name)
    end

end
