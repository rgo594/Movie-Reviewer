class ReviewsController < ApplicationController
  skip_before_action :authorized
  skip_before_action :verify_authenticity_token


  def show
    @review = Review.select{ |r| r[:movie_id] == params[:id].to_i }
    render json: @review
  end

  def user_reviews
    @reviews = Review.select{ |r| r[:user_id] == params[:id].to_i }
    render json: @reviews
  end

  def new
  end

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:r_comment, :r_score, :user_id, :movie_id, :username, :movie_title, :movie_poster)
  end
end
