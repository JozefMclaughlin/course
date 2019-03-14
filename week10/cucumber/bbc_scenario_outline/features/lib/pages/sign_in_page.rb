require 'capybara'

class BbcSignInPage
  include Capybara::DSL

  def visit_register_page

  end

  def click_register_link
    click_link('Register now')
  end

end
