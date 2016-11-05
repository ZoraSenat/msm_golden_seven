class DirectorsController < ApplicationController

  #CREATE Controllers
  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    redirect_to("http://localhost:3000/directors")
  end

  def new_form

  end

  #READ Controllers
  def index
    @list_of_directors = Director.all

  end

  def show
    @director = Director.find(params[:id])

  end


  #UPDATE Controllers
  def edit
    @director = Director.find(params[:id])

  end

  #UPDATE Controllers
  def update_row
    @director = Director.find(params[:id])
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save

    render("show")

  end

  #DELETE Controllers
  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end


end
