class AOEIIController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all beers
  get '/aoeii' do

    @civilisations = AOEIIAPI.new.aoeii_index_service.get_all_civs
    @civilisations = @civilisations['civilizations']

    erb :'aoeii/index'
  end

  # Show page for 1 beer
  get '/aoeii/:id' do
    id = params[:id].to_i

    @civ= AOEIIAPI.new.aoeii_show_service.get_civ id
    @civuniqunit = @civ['unique_unit'][0].gsub(/\//,' ').split(" ")
    @civuniqtech = @civ['unique_tech'][0].gsub(/\//,' ').split(" ")

    erb :'aoeii/show'
  end

end
