module Movies
  class BaseController < ApplicationController
    before_action :load_movie

    private

    def load_movie
      @movie = Movie.find(movie_id)
    end

    def movie_id
      params.require(:movie_id)
    end
  end
end
