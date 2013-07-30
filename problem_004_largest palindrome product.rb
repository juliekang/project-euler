#A palindromic number reads the same both ways. The largest palindrome made 
#from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def calculate_largest_palindrome(digits)
  nine_string = ""
  one_string  = "1"

  (0...digits).each do |n|
    nine_string = nine_string + "9"
  end
  (1...digits).each do |n|
  	one_string = one_string + "0"
  end
  nine_int = Integer(nine_string)
  one_int  = Integer(one_string)
  largest_palindrome = 0

  (one_int..nine_int).each do |x|
  	(one_int..nine_int).each do |y|
  	  n = x * y
  	  next if n <= largest_palindrome
      largest_palindrome = n if is_palindrome?(n)
    end
  end
  puts String(one_int) + " " + String(nine_int) + " " + String(largest_palindrome)
end

def is_palindrome?(num)
  num_string = String(num)
  return num_string == num_string.reverse
end

calculate_largest_palindrome 1
calculate_largest_palindrome 2
calculate_largest_palindrome 3 