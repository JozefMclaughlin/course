require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://www.toolsqa.com/automation-practice-form/')

sleep 2

# chrome_driver.find_element(:link_text, 'Partial Link Test').click
#
# sleep 2


chrome_driver.find_element(:name, 'firstname').send_keys 'First name'

# sleep 5

for i in 0..6 do
  chrome_driver.find_element(:id, "exp-#{i}").click
end

sleep 3
