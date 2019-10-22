class MoviesController < ApplicationController
  before_action :load_movie, only: %w(update show destroy)

  def index
    @movies = Movie.all
    render json: @movies
  end

  def show
    render json: @movie
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie
    else
      render json: @movie,
             status: :method_not_allowed,
             errors: @movie.errors.details
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors.details,
             status: :method_not_allowed
    end
  end

  def destroy
    render json: @movie.destroy
  end

  private

  def movie_params
    params.require(:movie)
      .permit(
        :name,
        :description,
        :url,
        :days_presentation
      )
  end
  
  def load_movie
    @movie = Movie.find(params[:id])
  end
end
