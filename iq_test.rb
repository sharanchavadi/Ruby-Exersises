=begin

Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

##Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

=end

# numbers = {}
# def iq_test(numbers)
#        result = numbers.each_with_index { |val,index| puts "The number at index #{index+1} is odd" if val%2 != 0 }
   
# end


# puts iq_test([2,4,6,5])


    def iq_test(numbers)
	   numbers_hash = {}
	   even_count=0
	   odd_count=0
	   numbers.each_with_index do |val,index|
          if val%2 != 0
          	numbers_hash[val]= "odd"
          	odd_count +=1
          else
          	numbers_hash[val]= "even"
          	even_count +=1
          end

       end

       
       	numbers_hash.each_with_index do |val,index|
       	   if even_count > odd_count
              if val=="odd"
                return index
              end
           else
              return index
       	   end
        end
    end


puts iq_test([2,4,7,8,10])


