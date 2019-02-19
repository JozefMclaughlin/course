require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'lib/aoeiiapi.rb'
require_relative 'lib/unitapi.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/aoeii_controller.rb'
require_relative './app/controllers/unit_controller.rb'

use Rack::Reloader
use Rack::MethodOverride


run Rack::Cascade.new([
  StaticController,
  AOEIIController,
  UnitsController
])
