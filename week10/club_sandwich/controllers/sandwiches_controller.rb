 class SandwichesController < Sinatra::Base

   # Enable reloader
   configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Cookies

  set :sessions, true
  # Set directory as the parent-directory of current file
  set :root, File.join(File.dirname(__FILE__), '..')

  #set the view directory correctly
  set :views, Proc.new { File.join(root, "views")}



  #Index
  get "/" do
    unless cookies[:visited]
      @message  = true
      # cookies[:visited] = 1
      response.set_cookie(:visited, :value=> 1, :expires => Time.now + 10)
    end
    @sandwiches = Sandwich.all
    erb :"sandwiches/index"
  end

  #new
  get "/new" do
    @sandwich = Sandwich.new
    erb :"sandwiches/new"
  end

  #Show
  get "/:id" do
    id = params[:id].to_i
    if (!session[:sandwiches])
      session[:sandwiches] = []
    end
    if (!session[:sandwiches].include? id)
      session[:sandwiches].push id
    end

    print session[:sandwiches]
    @sandwich = Sandwich.find id
    erb :"sandwiches/show"
  end

  #edit
  get "/:id/edit" do
    id = params[:id].to_i
    @sandwich = Sandwich.find id
    erb :"sandwiches/edit"
  end

  #create
  post "/" do
    sandwich = Sandwich.new
    sandwich.title = params[:title]
    sandwich.description = params[:description]

    sandwich.save
    redirect "/"
  end

  # update
  put "/:id" do
    id = params[:id].to_i

    sandwich = Sandwich.find id

    sandwich.title = params[:title]
    sandwich.description = params[:description]
    sandwich.save
    redirect "/#{id}"
  end

  # Delete
  delete "/:id" do
    id = params[:id].to_i
    Sandwich.destroy id

    redirect "/"
  end

 end
