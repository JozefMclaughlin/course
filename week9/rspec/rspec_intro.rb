require 'rspec'


describe "This is the description of the product or feature under test" do


  context 'context is an additional level to break out your code' do

    it "should add 2 numbers together" do
      num1 = 4
      num2 = 4

      expect(num1 + num2).to eq(8)
    end

    it "find the difference between 2 numbers" do
      pending "under production"
    end
  end
end
