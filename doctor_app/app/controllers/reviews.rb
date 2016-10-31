class ReviewsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @reviews = @doctor.reviews
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @reviews }
    end
    end
  def show
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.find(params[:id])
 respond_to do |format|
   format.html { render :show }
   format.json { render json: @review }
 end
  end
  def new
    @doctor = Doctor.find(params[:doctor_id])
    @review = Review.new
  end
def create
    @doctor = Doctor.find(params[:doctor_id])
    @review = @doctor.reviews.create!(review_params)
    redirect_to review_path(@review)
end
def edit
  @review = Review.find(params[:id])

end
def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to review_path(@review)
end
def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
end


private
def review_params
  params.require(:review).permit(:name, :body)
end
end
