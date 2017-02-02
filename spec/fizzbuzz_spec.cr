require "./spec_helper"

Spec2.describe Fizzbuzz do
  subject { Fizzbuzz.new }

  context "class structure" do
    it "should instantiate the class" do
      expect(subject).to be_a(Fizzbuzz)
    end
  end

  context "single value" do
    it "should return 'fizz' for multiples of 3" do
      expect(subject.fizzbuzz_of(3)).to eq("Fizz")
      expect(subject.fizzbuzz_of(6)).to eq("Fizz")
      expect(subject.fizzbuzz_of(9)).to eq("Fizz")
    end

    it "should return 'Buzz' for multiples of 5" do
      expect(subject.fizzbuzz_of(5)).to eq("Buzz")
      expect(subject.fizzbuzz_of(10)).to eq("Buzz")
      expect(subject.fizzbuzz_of(50)).to eq("Buzz")
    end

    it "should return 'Fizzbuzz' for multiples of 3 and 5" do
      expect(subject.fizzbuzz_of(15)).to eq("Fizzbuzz")
      expect(subject.fizzbuzz_of(30)).to eq("Fizzbuzz")
      expect(subject.fizzbuzz_of(45)).to eq("Fizzbuzz")
    end

    it "should return the number itself if not multiple of 3 and 5" do
      expect(subject.fizzbuzz_of(1)).to eq(1)
      expect(subject.fizzbuzz_of(2)).to eq(2)
      expect(subject.fizzbuzz_of(4)).to eq(4)
    end
  end
end
