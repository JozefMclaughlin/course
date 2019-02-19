require 'spec_helper'

describe 'Exchange rates JSON tests' do

  before(:all) do
    @exchange_rates = JSONParse.new('json_exchange_rates.json')
  end

  it "should be a hash" do
    expect(@exchange_rates.json_parse).to be_kind_of(Hash)
  end

  it "should have a date string" do
    expect(@exchange_rates.get_date_value).to be_kind_of(String)
  end

  it "should contain 31 rates" do
    expect(@exchange_rates.get_rates_count).to eq 31
    expect(@exchange_rates.get_rates_value_count).to eq 31


  end

  it "should list all rates as floats" do
    @exchange_rates.get_rates.each_value do |values|
      expect(values).to be_kind_of(Float)
    end
  end

  it "should list the base as EUR" do
    expect(@exchange_rates.get_base_value).to eq "EUR"
  end
end
