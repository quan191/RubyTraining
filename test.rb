#block 
array = Array[1,2,3,4]
x = array.map! do |n|
  n * n
end
puts x