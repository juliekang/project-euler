# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_difference
  # get sum of squares, 1 to 100
  sum_of_squares = (1..100).map{|n|n**2}.inject(:+)
  square_of_sums = (1..100).inject(:+) ** 2
  
  square_of_sums - sum_of_squares
end

puts sum_square_difference