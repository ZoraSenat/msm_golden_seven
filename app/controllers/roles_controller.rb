class RolesController < ApplicationController

  #CREATE Controllers
  def create_row
    @role = Roles.new
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]
    @role.save

    redirect_to("http://localhost:3000/roles")
  end

  def new_form

  end

  #READ Controllers
  def index
    @list_of_roles = Roles.all

  end

  def show
    @role = Roles.find(params[:id])

  end


  #UPDATE Controllers
  def edit
    @role = Roles.find(params[:id])

  end

  #UPDATE Controllers
  def update_row
    @role = Roles.find(params[:id])
    @role.character_name = params[:character_name]
    @role.movie_id = params[:movie_id]
    @role.actor_id = params[:actor_id]
    @role.save

    render("show")

  end

  #DELETE Controllers
  def destroy
    @role = Roles.find(params[:id])

    @role.destroy
  end


end
