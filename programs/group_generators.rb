require_relative 'gcd'

def mul_modulo(x)
  (1..x).select{|n| gcd(n,x) == 1}
end

def generators(x)
  group = mul_modulo(x)
  #group.each{|n| p (0..group.size).map{|pow| ( n**pow)% x }}
  group.select{|n| (0..group.size).map{|pow| ( n**pow)% x }.to_a.uniq.size == group.size}
end

def cyclic?(x)
  generators(x).size > 0
end

def order_of(n,x)
 g = mul_modulo(x) 
 #order of element has to be less than equal to order of group
 (1..g.size).select{|pow| ( n**pow)% x ==1 } [0]

end


