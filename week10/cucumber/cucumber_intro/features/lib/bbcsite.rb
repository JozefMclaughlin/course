require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_register_page'



module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_sign_in_page
    BBCSigninpage.new
  end

  def bbc_register_page
    BBCRegisterpage.new
  end
end
