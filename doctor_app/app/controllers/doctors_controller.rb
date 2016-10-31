class DoctorsController < ApplicationController

  def get_doctor
      @doctor = Doctor.new(params[:name])
  end
  def index
    @doctors = Doctor.all
    respond_to do |format|
   format.html { render :index }
   format.json { render json: @doctors }
 end
  end
  def show
    @doctor = Doctor.find(params[:id])
    format.html { render :show }
    format.json { render json: @doctor }
    end
  end
end
