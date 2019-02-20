class BBCRegisterpage
  include Capybara::DSL


  REGISTER_URL = 'https://account.bbc.com/register/details/age?context=homepage&nonce=O0gIHcYT-2NH0UGbqpjUdmFrGZhHnbT_SZng&ptrt=https%3A%2F%2Fwww.bbc.co.uk%2F&userOrigin=homepage'
  DAY_INPUT = 'day-input'
  MONTH_INPUT = 'month-input'
  YEAR_INPUT = 'year-input'
  EMAIL_INPUT = 'user-identifier-input'
  PASSWORD_INPUT = 'password-input'
  POSTCODE_INPUT = 'postcode-input'


  def visit_register_page
    visit(REGISTER_URL)
  end

  def set_day
    fill_in(DAY_INPUT)
  end

  def set_month
    fill_in(MONTH_INPUT)
  end

  def set_year 
    fill_in(YEAR_INPUT)
  end
  def method_name

  end
end
