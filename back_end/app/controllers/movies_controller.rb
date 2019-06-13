class MoviesController < ApplicationController
  
  def index
    @all = Movie.all
    render json: {movies:@all}
  end

  def show
  end

  def new
  end

  def create
  end

  def delete
  end
end
