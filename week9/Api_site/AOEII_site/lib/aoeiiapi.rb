require 'httparty'
require 'json'
require_relative "services/aoeii_services/show_service"
require_relative "services/aoeii_services/index_service"

class AOEIIAPI

  def aoeii_show_service
    AOEIIShowService.new
  end

  def aoeii_index_service
    AOEIIIndexService.new
  end

end
