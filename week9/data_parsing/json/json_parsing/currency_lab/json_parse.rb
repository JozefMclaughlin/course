require 'json'
class JSONParse

  attr_accessor :json_parse

  def initialize json_file
    @json_parse = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_parse["base"]
  end

  def get_rates
    @json_parse["rates"]
  end

  def get_rates_count
    get_rates.keys.count
  end
  def get_rates_value_count
    get_rates.values.count
  end

  def get_date_value
    @json_parse["date"]
  end
end
