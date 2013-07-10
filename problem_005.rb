#2520 is the smallest number that can be divided by each of the numbers from 1 
#to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the
#numbers from 1 to 20?

def calculate_smallest_multiple(lower, upper)
  candidate = nil
  counter = 0

  # Note: This is the trick of this problem.
  # Iterating by 1 is way too slow for upper bounds past 16 or so.
  # Every prime is used once so we can dramatically reduce runtime
  # by iterating by the product of the prime factors.
  step = find_primes(lower, upper).reduce(:*)

  while true do
    counter += step
    if divisible_by_range? lower, upper, counter
      candidate = counter
      break
    end
  end
 candidate
end

def find_primes(lower, upper)
  (lower..upper).select do |x| 
    x if is_prime? x
  end
end

def is_prime?(num)
  (2...num).each do |x|
    return false if num % x == 0
  end
  true
end

def divisible_by_range?(lower, upper, counter)
  upper.downto(lower).each do |n|
    return false if counter % n != 0
  end
  return true  
end

puts calculate_smallest_multiple(1, 20)