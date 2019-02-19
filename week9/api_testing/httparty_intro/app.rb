require 'httparty'

response = HTTParty.get('http://google.com')


# get response code eg 404, 200 for working
# response.code
# Get the message associated with the response code
# response.message


puts response.headers
