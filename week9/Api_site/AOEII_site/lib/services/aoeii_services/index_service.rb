class AOEIIIndexService

  include HTTParty

  attr_accessor :civilisations

  def get_all_civs
    @civilisations = JSON.parse(HTTParty.get('https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations').body)
  end

end
