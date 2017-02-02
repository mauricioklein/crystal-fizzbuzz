require "./spec_helper"

describe Fizzbuzz do
  it "should process" do
    Fizzbuzz.process(15).should eq(15)
  end
end
