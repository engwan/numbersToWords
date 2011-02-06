require 'spec_helper'

describe NumbersToWords::Translators::USEnglishTranslator do

  before :all do
    @en = NumbersToWords::Translators::USEnglishTranslator.new
  end

  it "should translate single digit numbers" do
    @en.to_spoken(0).should == "zero"
    @en.to_spoken(1).should == "one"
    @en.to_spoken(2).should == "two"
    @en.to_spoken(3).should == "three"
    @en.to_spoken(4).should == "four"
    @en.to_spoken(5).should == "five"
    @en.to_spoken(6).should == "six"
    @en.to_spoken(7).should == "seven"
    @en.to_spoken(8).should == "eight"
    @en.to_spoken(9).should == "nine"
  end

  it "should translate negative numbers" do
    @en.to_spoken(-1).should == "negative one"
    @en.to_spoken(-125).should == "negative one hundred and twenty-five"
    @en.to_spoken(-13).should == "negative thirteen"
  end

  it "should translate random numbers" do
    @en.to_spoken(432).should == "four hundred and thirty-two"
    @en.to_spoken(23489).should == "twenty-three thousand four hundred and eighty-nine"
  end

end
