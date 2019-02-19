require "sinatra"
require "sinatra/reloader"
require_relative "controllers/resource_controller.rb"


run ResourceController
