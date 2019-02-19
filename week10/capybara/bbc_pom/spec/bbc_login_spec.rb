require 'spec_helper'

# Test Data

valid_user = 'rwhitehouse@spartaglobal.com'
valid_password = 'Password123'


describe 'BBC Login Functionality' do


  context 'It should allow the user to login with valid details' do

    it "should form a happy path" do
      @bbcsite = BBCSite.new

      @bbcsite.bbc_homepage.visit_homepage
      expect(@bbcsite.bbc_homepage.current_url).to eq "https://www.bbc.co.uk/"

      @bbcsite.bbc_homepage.click_sign_in


      @bbcsite.bbc_sign_in_page.fill_in_username valid_user
      @bbcsite.bbc_sign_in_page.fill_in_password valid_password

      @bbcsite.bbc_sign_in_page.click_sign_in

      expect(@bbcsite.bbc_homepage.sign_in_link_text).to eq 'Your account'

    end

  end

  context 'It should respond with the correct error when incorrect details are input' do

  end

end
