require "./spec_helper"

Spec2.describe Fizzbuzz do
  subject { Fizzbuzz.new }

  let(fizz)     { "Fizz" }
  let(buzz)     { "Buzz" }
  let(fizzbuzz) { "FizzBuzz" }


  context "class structure" do
    it "should instantiate the class" do
      expect(subject).to be_a(Fizzbuzz)
    end
  end

  context "single value" do
    context "Fizz" do
      it "should return 'fizz' for multiples of 3" do
        expect(subject.fizzbuzz_of(3)).to eq(fizz)
        expect(subject.fizzbuzz_of(6)).to eq(fizz)
        expect(subject.fizzbuzz_of(9)).to eq(fizz)
      end
    end

    context "Buzz" do
      it "should return 'Buzz' for multiples of 5" do
        expect(subject.fizzbuzz_of(5)).to  eq(buzz)
        expect(subject.fizzbuzz_of(10)).to eq(buzz)
        expect(subject.fizzbuzz_of(50)).to eq(buzz)
      end
    end

    context "FizzBuzz" do
      it "should return 'Fizzbuzz' for multiples of 3 and 5" do
        expect(subject.fizzbuzz_of(15)).to eq(fizzbuzz)
        expect(subject.fizzbuzz_of(30)).to eq(fizzbuzz)
        expect(subject.fizzbuzz_of(45)).to eq(fizzbuzz)
      end
    end

    context "default case" do
      it "should return the number itself if not multiple of 3 and 5" do
        expect(subject.fizzbuzz_of(1)).to eq(1)
        expect(subject.fizzbuzz_of(2)).to eq(2)
        expect(subject.fizzbuzz_of(4)).to eq(4)
      end
    end
  end

  context "range" do
    let(range) { (5..10) }
    let(expeceted_response) { [buzz, fizz, 7, 8, fizz, buzz] }

    it "should calculate all the fizzbuzz for values in given range" do
      expect(subject.fizzbuzz_of(range)).to eq(expeceted_response)
    end
  end
end
