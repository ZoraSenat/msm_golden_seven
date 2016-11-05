Rails.application.routes.draw do

  #MOVIE DB ROUTES - READ
  get("/", { :controller => "movies", :action => "index" })

  #DIRECTOR ROUTES
  #CREATE
  get("directors/new_form", { :controller => "directors", :action => "new_form" })

  get("/directors/create", { :controller => "directors", :action => "create_row" })

  #READ
  get("/directors", { :controller => "directors", :action => "index" })

  get("directors/:id", { :controller => "directors", :action => "show" })

  #UPDATE
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit" })

    get("/directors/update_row/:id", { :controller => "directors", :action => "update_row" })

  #DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })


  #MOVIE ROUTES
  #CREATE
  get("movies/new_form", { :controller => "movies", :action => "new_form" })

  get("/movies/create", { :controller => "movies", :action => "create_row" })

  #READ
  get("/movies", { :controller => "movies", :action => "index" })

  get("movies/:id", { :controller => "movies", :action => "show" })

  #UPDATE
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit" })

    get("/movies/update_row/:id", { :controller => "movies", :action => "update_row" })

  #DELETE
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

end
