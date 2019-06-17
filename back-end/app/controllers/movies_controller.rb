class MoviesController < ApplicationController
  skip_before_action :authorized

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

  def update
  end

  def delete
  end
end
