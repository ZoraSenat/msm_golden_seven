class MoviesController < ApplicationController

  #CREATE Controllers
  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    redirect_to("http://localhost:3000/movies")
  end

  def new_form

  end

  #READ Controllers
  def index
    @list_of_movies = Movie.all

  end

  def show
    @movie = Movie.find(params[:id])

  end


  #UPDATE Controllers
  def edit
    @movie = Movie.find(params[:id])

  end

  #UPDATE Controllers
  def update_row
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show")

  end

  #DELETE Controllers
  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end


end
