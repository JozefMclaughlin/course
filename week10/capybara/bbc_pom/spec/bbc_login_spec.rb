require 'spec_helper'

describe 'BBC Login Functionality' do


  context 'It should allow the user to login with valid details' do

    it "should form a happy path" do
      @bbcsite = BBCSite.new
      @bbcsite.bbc_homepage.visit_homepage
      expect(@bbcsite.bbc_homepage.current_url).to eq "https://www.bbc.co.uk/"
      @bbcsite.bbc_homepage.click_sign_in


      
    end

  end

  context 'It should respond with the correct error when incorrect details are input' do

  end

end
