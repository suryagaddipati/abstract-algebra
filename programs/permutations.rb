p = [(1..9).to_a,(1..9).to_a]


def print(p)
  p p[0]
  p p[1]
end

def apply_permutation(p,*cycle)
  cycle.each_with_index{|x,i|
    p x,i
    p[1][x-1] = (cycle.size() -1 == i)? cycle[0]: cycle[i+1]
  }
end


print(p)
apply_permutation(p,3,8,6)
apply_permutation(p,1,6)
apply_permutation(p,6,4,2,5,9)
apply_permutation(p,2,4,9,7)
print(p)
