require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def find_all_food_items
    @menu.search('food')
  end

  def find_all_prices
    price_array =[]

    @menu.search('price').each do |price|
      price_array << price.text.gsub('£', '').to_f
    end

    price_array
  end

  def find_all_calories
    @menu.search('calories')
  end

  def method_name

  end

end
