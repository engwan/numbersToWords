require 'spec_helper'

describe Float do

  it "should have helper methods" do
    1.5.should respond_to(:to_words)
    1.5.should respond_to(:to_currency)
  end

  it "should translate to words like int" do
    1.5.to_words.should == "one"
    42312.123123.to_words.should == "forty-two thousand three hundred and twelve"
  end

  it "should translate to currency with cents" do
    1.4254.to_currency.should == "one Peso and forty-three Centavos"
    42312.54.to_currency.should == "forty-two thousand three hundred twelve Pesos and fifty-four Centavos"
  end

  it "should not display cents when zero" do
    20.0.to_currency.should == "twenty Pesos"
  end

end
