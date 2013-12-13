class AppointmentsController < ApplicationController

  def index
  end

  def new
    @appointment = Appointment.new
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def create
     @appointment = Appointment.new(params[:appointment])
      if @appointment.save
        redirect_to root_path, notice: "An email was sent with your appointment details"
      else
        redirect_to root_path, notice: "Please try again"
      end
  end
end
