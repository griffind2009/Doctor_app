class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render json: @doctors, include: :reviews
  end
  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor, include: :reviews
  end
end
