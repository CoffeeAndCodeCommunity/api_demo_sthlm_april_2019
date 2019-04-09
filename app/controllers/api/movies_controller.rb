# frozen_string_literal: true

class Api::MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: { movies: movies }
  end
end
