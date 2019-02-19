require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end


session = Capybara::Session.new(:chrome)
session2 = Capybara::Session.new(:chrome)

session.visit('http://www.toolsqa.com/automation-practice-form/')
session2.visit('https://www.google.com/')
session.fill_in 'firstname', with: 'test'
session.choose 'exp-1'
session.choose 'sex-0'
sleep 2
