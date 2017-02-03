class Fizzbuzz
  def fizzbuzz_of(number : Number)
    divisible_by_3 = number.divisible_by?(3)
    divisible_by_5 = number.divisible_by?(5)

    return "FizzBuzz" if (divisible_by_3 && divisible_by_5)
    return "Fizz"     if (divisible_by_3)
    return "Buzz"     if (divisible_by_5)
    return number
  end

  def fizzbuzz_of(range : Range(Int32, Int32))
    range.map do |number|
      fizzbuzz_of(number)
    end
  end
end
