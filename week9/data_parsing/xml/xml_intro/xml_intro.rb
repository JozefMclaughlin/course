require 'nokogiri'

xml = Nokogiri::XML(File.read('xml_menu.xml'))

#  .search('tagname') will return all tags of that name. These are indexed loke an array.

# puts xml.search('name')[3]


# xml.search('name').each_with_index do |item, index|
#   puts "#{item.text} has #{xml.search("calories")[index].text} calories."
# end


# XPath
# puts xml.xpath('/breakfast_menu/food/price') follows path so only finds price in food on the menu
# puts xml.xpath('//price') same as search
