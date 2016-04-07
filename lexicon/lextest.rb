require_relative "lex.rb"

describe Lexiconomitron do
  before(:each) do
    @lexi = Lexiconomitron.new
  end
  describe "#eat_t" do
    it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  describe "#shazam" do
    it "reverses letter within words of array and returns first and last words" do
      expect(@lexi.shazam(["this", "is", "a", "boring", "test"])).to eq(["sih","se"])
    end
  end
  describe "#oompa_loompa" do
    it "returns words of three characters or less in same order" do
      expect(@lexi.oompa_loompa(["if", "you", "wanna", "be", "lovers"])).to eq(["if", "you", "be"])
    end
  end

end
