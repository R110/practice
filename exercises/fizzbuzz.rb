require_relative "fizzbuzzclass.rb"

describe Fizzbuzz do
  before(:each) do
    @fizz = Fizzbuzz.new
  end
  describe "#check" do
    it "should return Buzz for multiple of 5 only" do
      expect(@fizz.check(5)).to eq("Buzz")
    end
    it "should return Fizz for multiples of 3 only" do
      expect(@fizz.check(9)).to eq("Fizz")
    end
    it "should return Fizzbuzz for multiples of both 3 and 5" do
      expect(@fizz.check(15)).to eq("Fizzbuzz")
    end
    it "should return the number if not divisible by 3 or 5" do
      expect(@fizz.check(8)).to eq(8)
  end
end
end
