require 'spec_helper'

describe 'BBC Register Functionality' do
  before(:all) do
    @bbcsite = BBCSite.new
  end

  context 'It should allow the user to register with valid details' do
    it "should form a happy path" do

      @bbcsite.bbc_register_page.visit_register_page
      


    end
  end
