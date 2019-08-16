class ReviewsController < ApplicationController
  skip_before_action :authorized
  skip_before_action :verify_authenticity_token

  def user_reviews
    @reviews = Review.select( |r| r[:user_id] == params[:user_id].to_i)
    render json: {review: @reviews}
  end

  def show
    @review = Review.select{ |r| r[:movie_id] == params[:id].to_i }
    render json: {review: @review}
  end

  def new
  end

  def create
    # byebug
    # Review.create(review_params)
    @review = Review.create(review_params)
    render json: {review: @review}
  end

  def update
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:r_comment, :r_score, :user_id, :movie_id, :username)
  end
end
