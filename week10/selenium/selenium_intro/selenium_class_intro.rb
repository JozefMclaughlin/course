require 'selenium-webdriver'

class SeleniumQAToolsForm

  FORM_URL = 'https://www.toolsqa.com/automation-practice-form/'


  def initialize
    # set up the driver for chrome
    @driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @driver.get(FORM_URL)

  end

  def input_firstname text
    @driver.find_element(:name, 'firstname').send_keys(text)
  end

  def input_lastname text
    @driver.find_element(:name, 'lastname').send_keys(text)
  end

  def select_sex_value id
    @driver.find_element(:id, "sex-#{id}").click
  end

  def select_experience id
    @driver.find_element(:id, "exp-#{id}").click
  end

  def input_date text
    @driver.find_element(:id, 'datepicker').send_keys(text)
  end

  def select_profession id
    @driver.find_element(:id, "profession-#{id}").click
  end

  def select_automation_tool id
    @driver.find_element(:id, "tool-#{id}").click
  end

  def select_continent i
     continents = @driver.find_element(:id, "continents")
     options = continents.find_elements(:tag_name, "option")
     options[i].click
  end

  def select_command i
    select = @driver.find_element(:id, "selenium_commands")
    all_options = select.find_elements(:tag_name, "option")
    all_options[i].click
  end

  def submit
    @driver.find_element(:id, "submit").click
  end
end

x = SeleniumQAToolsForm.new
x.visit_practice_form
x.input_firstname 'john'
sleep 1
x.input_lastname 'smith'
sleep 1
x.select_sex_value 0
sleep 1
x.select_experience 3
sleep 1
x.input_date '18/02/2019'
sleep 1
x.select_profession 1
sleep 1
x.select_automation_tool 2
sleep 1
x.select_continent 1
sleep 1
x.select_command 3
sleep 1
x.submit
sleep 3
