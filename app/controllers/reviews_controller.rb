# NHO: careful of indentation!
class ReviewsController < ApplicationController
  # NHO: Can you see any line that repeats itself throughout this controller?
  # Recommend using a before_action method to do common tasks such as find a doctor
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @reviews = @doctor.reviews
    render json: @reviews
  end

  def show
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.find(params[:id])
    render json: @review
  end


  def create
    @doctor = Doctor.find(params[:doctor_id])
    @review = @doctor.reviews.create!(review_params)
    render json: @review
  end

  # NHO: you wont have views for edit / new

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    render json: @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: @review
  end

  private
  def review_params
    params.require(:review).permit(:name, :body)
  end
end
