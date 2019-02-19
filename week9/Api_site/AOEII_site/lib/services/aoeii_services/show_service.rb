class AOEIIShowService

  include HTTParty

  attr_accessor :civilisation

  def get_civ id
    @civilisation = JSON.parse(HTTParty.get("https://age-of-empires-2-api.herokuapp.com/api/v1/civilization/#{id}").body)
  end

end
