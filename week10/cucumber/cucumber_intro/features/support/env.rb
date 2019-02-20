require 'rspec'
require 'capybara/cucumber'

require_relative '../lib/bbcsite.rb'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome   #Sets chrome as the default browser
  config.default_max_wait_time = 5 #Wait time for the asynchronous processes to finish
  config.ignore_hidden_elements = true #can only see visable page ignore_hidden_elements
  config.default_selector = :css #CSS selector is used as default
end
