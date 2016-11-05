class ActorsController < ApplicationController

  #CREATE Controllers
  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    redirect_to("http://localhost:3000/actors")
  end

  def new_form

  end

  #READ Controllers
  def index
    @list_of_actors = Actor.all

  end

  def show
    @actor = Actor.find(params[:id])

  end


  #UPDATE Controllers
  def edit
    @actor = Actor.find(params[:id])

  end

  #UPDATE Controllers
  def update_row
    @actor = Actor.find(params[:id])
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render("show")

  end

  #DELETE Controllers
  def destroy
    @actor = Actor.find(params[:id])

    @actor.destroy
  end


end
