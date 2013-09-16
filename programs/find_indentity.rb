group = [5,15,25,35]
group.each{|x| p x.to_s + " is the indentity"  if (x * x) % 40 ==x }
