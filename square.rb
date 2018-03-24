#square digits of given number n=1991 #181811

n=1991
n=n.to_s
convert=n.split("")
i=0
result=""
cal=0
while i<convert.length
  square=convert[i].to_i * convert[i].to_i 
  result +=square.to_s
i+=1
end
puts result