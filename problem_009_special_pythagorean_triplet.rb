# http://projecteuler.net/problem=9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorean_triplet
  (1..1000).each do |a|
    (a+1..1000).each do |b|
      c = 1000 - b - a
      return [a, b, c].inject(:*) if (c**2 == b**2 + a**2 && a + b + c == 1000)
    end
  end
end

puts pythagorean_triplet