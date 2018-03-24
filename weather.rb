require 'JSON' #javascript object notation

input = '{
                    "city": {
                        "id":1851632,
                        "name":"Shuzenji",
                        "coord": {
                            "lon":138.933334,
                            "lat":34.966671
                            },
                    "country":"JP",
                    "cod":"200",
                    "message":0.0045,
                    "cnt":38
                }
      }'

weather = JSON.parse(input) #convert json to hash

puts "the lat and long of #{weather["city"]["name"]} is #{weather["city"]["coord"]["lon"]} - #{weather["city"]["name"]} is #{weather["city"]["coord"]["lat"]}"

weather.to_json #converts hash to json