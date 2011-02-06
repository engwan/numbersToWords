require 'spec_helper'

describe Integer do

  it "should have helper methods" do
    1.should respond_to(:to_words)
    1.should respond_to(:to_currency)
  end

  it "should translate to words" do
    1.to_words.should == "one"
    42312.to_words.should == "forty-two thousand three hundred and twelve"
  end

  it "should translate to currency" do
    1.to_currency.should == "one Peso"
    42312.to_currency.should == "forty-two thousand three hundred and twelve Pesos"
  end

end
