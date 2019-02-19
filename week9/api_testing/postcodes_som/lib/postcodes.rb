require 'httparty'
require 'json'
require_relative 'services/single_postcode_service'
require_relative 'services/multiple_postcode_service'

# Parent Services class
class Postcodesio
  # Child Service Class
  def single_postcode_service
    SinglePostCodeService.new
  end
  def multiple_postcode_service
    MultiplePostCodeService.new
  end
end

pc = Postcodesio.new.single_postcode_service
pc.single_postcode_result 'b111by'
puts pc.get_result
puts pc.get_postcode
