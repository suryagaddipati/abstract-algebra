

def print_p(p)
  puts '-'*10
  p ((1..p.to_a.size).to_a)
  p p.to_a
  puts '-'*10
end

def print_cycle(p)
  looped_elements = []
  begin
  looped_elements <<  print_loop_for((p - looped_elements.flatten)[0],p.to_a)

  end while( looped_elements.flatten.size != p.to_a.size)
  puts ""
end

def print_loop_for(current_element,p)
  looped_elements = []
  print "("
  begin
    print current_element
    looped_elements << current_element
    current_element = p [current_element -1]
  end while(!looped_elements.include?(current_element))
  print ")"
  looped_elements
end

def goes_to(e, cycle)
  hash = Hash[cycle.map.with_index.to_a] 
  cycle.include?(e)? (hash[e]+1 == cycle.size ? cycle[0] : cycle[hash[e]+1])  : e; 
end

def apply_permutation(p,cycle)
  p.map{|e|  goes_to(e,cycle) }
end


p = (1..4) 
print_p(p)
(1..3).each{|x|
  p = apply_permutation(p,[3,4])
print_p(p)
print_cycle(p)
}
#apply_permutation(p,1,6)
#apply_permutation(p,6,4,2,5,9)
#apply_permutation(p,2,4,9,7)
