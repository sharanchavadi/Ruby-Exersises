
#Hash way of doing it
#find all vowels in give string
str = "why did kattappa kill bahubali"
vowel_hash = {"a" =>0, "e" =>0, "i" => 0, "o" =>0, "u" =>0}

result_str = str.split("")
count = 0
vowel_hash.each do |key,val|
	vowel_hash[key]=result_str.count(key)
end
puts vowel_hash

#Array way of doing it
vowel = {"a" =>0, "e" =>0, "i" => 0, "o" =>0, "u" =>0}
sentences = "why did kattappa kill bahubali"
letters = sentences.split("")
#letters = ["w","h","y".........]
letters.each do |letter|
	if vowel.has_key? letter
		vowel[letter] +=1
    end
 end
 puts vowel

 #vowel.select {|key,value| key ==0} this will print all keys who has value 0
