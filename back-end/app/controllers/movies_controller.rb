class MoviesController < ApplicationController
  skip_before_action :authorized

  def index
    @all = Movie.all
    render json: {movies:@all}
  end

  def show
    @movie = Movie.find(params[:id])
    render json: {movies: @movie}
  end

  def new
  end

  def create
  end

  def update
  end

  def delete
  end
end
