class Api::V1::TripsController < ApplicationController

    def index   
        trips = Trip.all
        render json: trips
    end 

    def show
        trip = trip.find(trip_params[:id])
        render json: trip, except: [:created_at, :updated_at]
    end
    
    def create
    trip = Trip.create(name: params[:name], date: params[:date], destination: params[:destination], user_id: params[:user_id])
    render json: trip, except: [:created_at, :updated_at]
    end 
    
    def update 
        trip = Trip.find(name: params[:name], date: params[:date], destination: params[:destination])
        trip.update(name: params[:name], date: params[:date], destination: params[:destination])
        render json: trip
    end 
    
    def destroy
        trip = Trip.find(params[:id])
        trip.destroy
    end 
    
    
    
    private
    # def trip_params
    #     params.require(:trip).permit(:user_id, :name, :date, :destination)
    # end

end
