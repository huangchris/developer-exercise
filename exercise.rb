class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    marklar = str.gsub(/[a-z]{5,}/, "marklar")
    marklar.gsub(/[A-Z][a-z]{4,}/, "Marklar")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    nums = [1,1]
    nums << nums[-1] + nums[-2] while nums.length < nth
    nums.select(&:even?).inject(&:+)
  end

end
