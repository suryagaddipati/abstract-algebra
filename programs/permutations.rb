

def print(p)
  puts '-'*10
  p ((1..p.to_a.size).to_a)
  p p.to_a
  puts '-'*10
end

def goes_to(e, cycle)
  hash = Hash[cycle.map.with_index.to_a] 
  cycle.include?(e)? (hash[e]+1 == cycle.size ? cycle[0] : cycle[hash[e]+1])  : e; 
end

def apply_permutation(p,cycle)
  p.map{|e|  goes_to(e,cycle) }
end


p = (1..4) 
print(p)
(1..3).each{|x|p = apply_permutation(p,[1,2,3,4])}
print(p)
#apply_permutation(p,1,6)
#apply_permutation(p,6,4,2,5,9)
#apply_permutation(p,2,4,9,7)
