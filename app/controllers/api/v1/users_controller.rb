class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end 

    def show
        user = User.find(params[:id])
        render json: user.to_json(include: [:trips, :goals, :appointments, :finance_items, :list_items])
    end
    
    def create
    user = User.create(params)
    render json: user, except: [:created_at, :updated_at]
    end 
    
    def update 
        user = User.find(params[:id])
        user.update(params)
        render json: user
    end 
    
    def destroy
        user = User.find(params[:id])
        user.destroy
    end 
    
    
    private
    # def user_params
        # params.require(:user).permit(:name, :username, :password)
    # end

end
