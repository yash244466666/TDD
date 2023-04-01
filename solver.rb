class Solver
  def self.factorial(number)
    raise ArgumentError, 'n must be non-negative' if number.negative?
    return 1 if number.zero?

    (1..number).inject(:*)
  end

  def self.reverse(word)
    raise ArgumentError, 'Invalid input' if word.class != String

    word.reverse
  end

  def self.fizzbuzz(number)
    case number
    when number % 15 then 'fizzbuzz'
    when number % 3 then 'fizz'
    when number % 5 then 'buzz'
    else number.to_s
    end
  end
end
