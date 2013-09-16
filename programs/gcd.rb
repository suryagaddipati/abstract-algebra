def gcd(a,b)
  (t= a ; a =b ; b =t) if a < b 
  return b if a % b ==  0 
  gcd(b, a%b) 
end


