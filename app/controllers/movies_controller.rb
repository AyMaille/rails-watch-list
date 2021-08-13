class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    # @list = List.find(params[:id])
    @movie = Movie.new(movie_params)
    @movie.save
  end

  private

  def movie_params
    params.require(:movie).permit(:name)
  end
end
