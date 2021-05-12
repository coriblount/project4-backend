class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end 
    
    def create
    user = User.create(user_params)
    render json: user, except: [:created_at, :updated_at]
    end 
    
    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end 
    
    def destroy
        user = User.find(params[:id])
        user.destroy
    end 
    
    
    private
    def user_params
        params.require(:user).permit(:name, :username, :password)
    end

end
