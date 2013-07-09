# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def calculate_largest_prime_factor(num)

  candidate_factor = 2
  largest_factor = candidate_factor
  quotient = nil

  while (!candidate_is_prime?(num))
    if candidate_is_prime?(candidate_factor)
      while num % candidate_factor == 0
      	quotient = num / candidate_factor
      	puts candidate_factor
      	num = quotient
      end
      candidate_factor += 1
    else
      candidate_factor += 1
    end
  end
  puts quotient
  puts "DONE"
end



def candidate_is_prime?(num)
  return true if num == 2
  (2...num).each do |n|
    return false if num % n == 0
  end
  true
end

calculate_largest_prime_factor 126
calculate_largest_prime_factor 127
calculate_largest_prime_factor 1989
calculate_largest_prime_factor 13195
calculate_largest_prime_factor 600851475143