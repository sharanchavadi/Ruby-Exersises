mobiles = ["43242424","3242342344","43243423","4234343244"]

=begin # in arrays
mobile_array = [[ "sharan","4244324444"],["manoj","432424244"]]

puts mobile_array [1][1]
=end

puts "mobile no of sharan is #{mobiles[1]}"
puts "mobile no of monoj is #{mobiles[0]}"

#key => value key is also known as a label
#keys are always going to be unique. it will find and return the last value of the key.

mobile_hash = {"sharan" => "423424244",
                "manoj" => "432424244",
                 "prasad" => ["42424244","44324444"],
                  "vinay" => "3434442344"
              }

puts "mobile no of sharan #{mobile_hash["sharan"]}"
puts "mobile no of prasad #{mobile_hash["prasad"]}"