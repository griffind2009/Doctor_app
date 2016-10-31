class ReviewsController < ApplicationController
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

  def new
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.new
    render json: @review
  end
def create
    @doctor = Doctor.find(params[:doctor_id])
    @review = @doctor.reviews.create!(review_params)
    render json: @review

end
def edit
  @review = Review.find(params[:id])
  @doctor=@review.doctor
  render json: @review
end
def update
  @doctor = Doctor.find(params[:doctor_id])
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
