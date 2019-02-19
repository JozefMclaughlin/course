require 'httparty'
require 'json'
require_relative "services/unit_services/show_service"
require_relative "services/unit_services/index_service"

class UnitAPI

  def unit_show_service
    UnitShowService.new
  end

  def unit_index_service
    UnitIndexService.new
  end

end
