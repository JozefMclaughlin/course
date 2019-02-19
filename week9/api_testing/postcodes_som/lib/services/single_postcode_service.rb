class SinglePostCodeService

  include HTTParty
  base_uri "https://api.postcodes.io"


  def single_postcode_result postcode
    response = self.class.get("/postcodes/#{postcode}").body
    @single_reult = JSON.parse(response)
  end

  def get_status
    @single_reult['status']
  end
  def get_result
    @single_reult['result']
  end
  def get_postcode
    get_result['postcode']
  end
  def get_quality
    get_result['quality']
  end
  def get_eastings
    get_result['eastings']
  end
  def get_northings
    get_result['northings']
  end
  def get_country
    get_result['country']
  end
end
