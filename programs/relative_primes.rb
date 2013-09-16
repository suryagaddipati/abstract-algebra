require_relative 'gcd'

def relative_primes(n)
  (1..n).select{|x| gcd(x,n) == 1}
end

p relative_primes(18).size()
