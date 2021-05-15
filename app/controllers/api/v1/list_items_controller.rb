class Api::V1::ListItemsController < ApplicationController

    def index 
        list_items = ListItem.all
        render json: list_items
    end    
    
    def create

    listitem = ListItem.create(name: params[:name], user_id: params[:user_id])
    render json: listitem
    end 
    
    def destroy
        listitem = ListItem.find(params[:id])
        listitem.destroy
    end 
    
    # private
    # def listitems_params
    #     params.require(:list_item).permit(:user_id, :name)
    # end

end
