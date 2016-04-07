require_relative "stringcalculator.rb"

describe StringCalculator do
  before(:each) do
    @calculator = StringCalculator.new
  end
  describe "#add" do
    it "should add empty string" do
      expect(@calculator.add("")).to eq(0)
    end
    it "should add multiple nums" do
      expect(@calculator.add("2,3,5")).to eq(10)
    end
  end
end
