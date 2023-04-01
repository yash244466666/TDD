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
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
