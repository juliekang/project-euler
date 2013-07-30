# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

#require 'benchmark'

def find_first_10k_primes()
  primes = [2, 3]
  counter = primes.last

  while(true)
    counter += 1
    next if counter % 2 == 0
    next if counter % 3 == 0
    next if counter % 5 == 0 && counter > 5
    next if counter % 7 == 0 && counter > 7

    catch (:done) do
	    (5...counter).step(2).each do |n|
	      throw :done if counter % n == 0
	    end
      primes << counter
    end

    if primes.length == 10001
    	break
    end

  end

  primes
end

puts find_first_10k_primes()[10001]

# If we want to benchmark, could compare versions...
# Benchmark.bm do |bm|
#   bm.report {
#     result = find_first_10k_primes(false) # run 1, unoptimized
#     puts result.inspect
#     puts result.length
#   }

#   bm.report {
#     result = find_first_10k_primes(true) # run 2, optimized
#     puts result.inspect
#     puts result.length
#   }  
# end

