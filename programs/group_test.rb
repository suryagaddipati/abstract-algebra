def test_closure(x,n)
  x.each{|a| x.each {|b| puts "#{a}.#{b} = #{a*b%n} $\\in$ $S$ , " if x.include? a*b%n }}
end

test_closure( [1,2,3,4] , 5 )
