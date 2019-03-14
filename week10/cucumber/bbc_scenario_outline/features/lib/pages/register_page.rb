require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  YEAR_INPUT = '#year-input'

  def visit_register_page

  end

  def select_over_thirteen
    click_link('13 or over')
  end

  def enter_DOB(day, month, year)
    fill_in('day-input', with: day)
    fill_in('month-input', with: month)
    fill_in('year-input', with: year)
  end

  def click_next_button
    click_button('Continue')
  end

  def fill_in_email(email)
    find('#user-identifier-input').click
    fill_in('user-identifier-input', with: email)
  end

  def fill_in_password(password)
    fill_in('password-input', with: password)
  end

  def password_field
    click_link('toggle-password-type')
  end

  def check_error_message
    find('#form-message-password').text
  end
  def check_email_error_message
    find('#form-message-email').text
  end

end
