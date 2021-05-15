class Api::V1::AppointmentsController < ApplicationController

    def index   
        appt = Appointment.all
        render json: appt
    end 
    
    def create
    appointment = Appointment.create(name: params[:name], date: params[:date], time: params[:time], user_id: params[:user_id])
    render json: appointment
    end 
    
    def update 
        appointment = Appointment.find(params[:id])
        appointment.update(appointment_params)
        render json: appointment
    end 
    
    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
    end 
    
    
    # private
    # def appointment_params
    #     params.require(:appointment).permit(:user_id, :name, :date, :time)
    # end

end
