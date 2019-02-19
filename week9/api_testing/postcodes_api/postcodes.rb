require 'httparty'
require 'json'

class Postcodesio
  include HTTParty #equivalent to require 'httparty'

  attr_accessor :single_reult, :multiple_results

  base_uri "https://api.postcodes.io"

  def single_postcode_result postcode
    response = self.class.get("/postcodes/#{postcode}").body
    @single_reult = JSON.parse(response)
  end

  def multiple_postcode_results postcodearray
    response = self.class.post("/postcodes", :body => {'postcodes': postcodearray}).body
    @multiple_results = JSON.parse(response)
  end
end


postcode = Postcodesio.new

puts postcode.multiple_postcode_results ["B111BY", "B7 4BP"]
