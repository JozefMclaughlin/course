class UnitShowService

  include HTTParty

  attr_accessor :unit

  def get_unit id
    @unit = JSON.parse(HTTParty.get("https://age-of-empires-2-api.herokuapp.com/api/v1/unit/#{id}").body)
  end

end
