class BBCSigninpage
  include Capybara::DSL

  USERNMAE_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'

  def fill_in_username input
    fill_in(USERNMAE_FIELD_ID, with: input)
  end

  def fill_in_password input
    fill_in(PASSWORD_FIELD_ID, with: input)
  end

  def click_sign_in
    click_button(SUBMIT_BUTTON_ID).click
  end

end
