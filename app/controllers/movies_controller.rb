class MoviesController < ApplicationController


#MOVIES CONTROLLERS
  def index
  @list_of_movies = Movie.all
  
  end



end
