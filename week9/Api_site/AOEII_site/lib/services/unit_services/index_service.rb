class UnitIndexService

  include HTTParty

  attr_accessor :units

  def get_all_units
    @units = JSON.parse(HTTParty.get('https://age-of-empires-2-api.herokuapp.com/api/v1/units').body)
  end

end
