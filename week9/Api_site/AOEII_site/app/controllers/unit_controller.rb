class UnitsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all beers
  get '/units' do

    @units = UnitAPI.new.unit_index_service.get_all_units
    @units = @units['units']

    erb :'units/index'
  end

  # Show page for 1 beer
  get '/units/:id' do
    id = params[:id].to_i

    @unit= UnitAPI.new.unit_show_service.get_unit id


    erb :'units/show'
  end

end
