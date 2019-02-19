class ResourceController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # Set directory as the folder above this file
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views")}


  $content = [
    {
    id: 0,
    title: "Walton Castle",
    body: "This is a small castle",
    },
    {
      id: 1,
      title: " Lindisfarne Castle",
      body: "This is also a castle",
    },
    {
      id: 2,
      title: "Alnwick Castle",
      body: "This is a bigger castle.",
    },
    {
      id: 3,
      title: "Caernarfon Castle",
      body: "This is a Welsh castle",
    }
  ]



  # index
  get "/" do
    @content = $content
    erb :"resources/index"
  end

  # New
  get "/new" do
    erb :"resources/new"
  end

  # Show
  get "/:id" do
    @content = $content
    @id = params[:id]
    @current = @content[@id.to_i]
    erb :"resources/content"
  end

  # Edit
  get "/:id/edit" do
    @content = $content
    @id = params[:id]
    erb :"resources/content"
  end


  # Create
  post "/" do
  end

  # Update
  put "/:id" do
  end

  # Delete
  delete "/:id" do
  end
end
