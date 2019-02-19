require "sinatra"
require "sinatra/reloader" if development?
# require "sinatra/contrib"

array = [1,2,3,4,5]

get "/" do
  index
end



get "/random" do
  "this page is a random and has an array: #{array}"
end


def index
  "Hello, this an update for this simple site"
end
