def prefill(n,v)

   result = Array.new(n,v)
   if n >= 0
      return "#{result}"
   else
      return "n is invalid"
   end
    
end

puts "Enter n"
n = gets.to_i
puts "Enter v"
v = gets.chomp
puts prefill(n,v)


