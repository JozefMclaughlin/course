require 'spec_helper'

describe 'BBC Login Functionality' do


  context 'It should allow the user to login with valid details' do
    @bbcsite = BBCSite.new
    @bbcsite.bbc_homepage.visit_homepage
    expect(@bbcsite.current_url).to eq "https://www.bbc.co.uk/"
    @bbcsite.bbc_homepage.click_sign_in
  end

  context 'It should respond with the correct error when incorrect details are input' do

  end

end
