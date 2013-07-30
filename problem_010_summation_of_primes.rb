# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.
require 'benchmark'

def find_sum_primes(limit)
  primes = [2]

  running_sum = 2
  (3...limit).each do |n|
    if is_prime(n)
      running_sum += n
      primes << n
    end
  end

  running_sum
end

def is_prime(num)
  root = Math.sqrt(num).ceil
  (2..root).each do |divisor|
    return false if (num % divisor) == 0
  end
  true
end

Benchmark.bm do |bm|
  bm.report {
    result = find_sum_primes(2000000)
    puts result.inspect
  }
end
