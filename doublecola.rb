names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
puts "enter the value for N"
n = gets.to_i
i = 0
while i<n

    res = names.shift
    names = names.push(res,res)

i+=1
end
puts "Name of a man who drank the #{n}-th cola is: #{names[0]s}"