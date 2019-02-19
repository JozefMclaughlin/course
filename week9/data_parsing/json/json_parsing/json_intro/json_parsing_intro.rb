require 'json'


json = File.read('json_example.json')

json_parse= JSON.parse(json)

json_parse["colors"].each do |colour|
  puts colour["color"]
end
