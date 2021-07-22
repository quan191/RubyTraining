puts "Hello world"
3.times {puts "hello"}
print "Quanle"
puts "quanle"
name = "quan"
puts "hello" + name
puts name[0,3]
puts "Enter your Name :"
name2 = gets.chomp()
puts "Hello" + name2 + "!"
friends = Array["huy"]
puts friends
h = { 
 :one => 1, 
 :two => 2 
}
h[:one] 
h[:three] = 3 
h.each do |key,value| 
	puts "#{value}:#{key}"
end

File.open("test.txt","r") do |file|
	puts file.readline() 
	
	for line in file.readlines()
		puts line
	end
end
File.open("test.txt","a") do |file|
	file.write("Halleiluja\n")
	
end
