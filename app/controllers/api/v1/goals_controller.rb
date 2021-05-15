class Api::V1::GoalsController < ApplicationController

    def index 
        goals = Goal.all
        render json: goals
    end 
    
    def create
    goal = Goal.create(name: params[:name], start: params[:start], completion: params[:completion], user_id: params[:user_id])
    render json: goal
    end 
    
    def update 
        goal = Goal.find(params[:id])
        goal.update(start: params[:start])
        render json: goal
    end 
    
    def destroy
        goal = Goal.find(params[:id])
        goal.destroy
    end 
    
    
    private
    # def goal_params
    #     params.require(:goal).permit(:user_id, :name, :start, :completion)
    # end

end
