require 'spec_helper'

describe 'PunkAPI' do
  before(:all) do
    @api_call = PunkAPI.new
    @beer = @api_call.punk_show_service.get_beer(rand(1..25))
  end
  context "basic data types" do

    it "should respond with an array" do
      expect(@beer).to be_kind_of Array
    end
    it "should contain one beer as a hash" do
      expect(@beer[0]).to be_kind_of Hash
      expect(@beer.length).to eq 1
    end
    it "should contain one beer as a hash" do
      expect(@beer.first).to be_kind_of Hash
    end


  end

end
