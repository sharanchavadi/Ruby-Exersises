
require 'faker'

class Bank
	attr_accessor :acc_number, :name, :balance #assume 200 customers
    @@customers = []

    def initialize(data)
    	@acc_number = data["acc_number"]
    	@name = data["name"]
    	@balance = data["balance"]
    	@@customers.push(self)
    end

    def self.all
    	@@customers
    end

    def details
    	"Acc_number:#{self.acc_number}\tName:#{self.name}\tBalance:INR#{self.balance}"
    end

	def self.low_balance
		@@customers.find_all{|customer|customer.balance<100}
	end

	def self.transaction(acc_number,amount,option)
		result_account = @@customers.find{|a|a.acc_number == acc_number}
		if result_account == nil 
           puts "Invalid account number"
        else
        
           case option
           when 1
                result_account.balance = result_account.balance + amount
                puts "Amount deposited successfully, the account balance is:INR#{result_account.balance}"
              
           when 0
        	   if (result_account.balance < amount || result_account.balance <= 100)
        	       puts "The abalance is insufficient for the specified withdrawal"
        	   else
        	       result_account.balance = result_account.balance - amount
        	       puts "Amount withdrawn successfully, the account balance is:INR#{result_account.balance}"
        	   end
           else
        	  puts "enter valid option"
           end
        end 
    end
end

200.times do
    data = {"acc_number"=>Faker::Bank.iban, "name"=>Faker::Name.name, "balance"=>Random.rand(95..250)}
    Bank.new(data)
end

puts "\nAccount details:\n"
Bank.all.each do |customer|
	puts customer.details
end

puts "\nAccount details of customers whose balance below INR 100 are:"
Bank.low_balance.each do |low|
	puts "Acc_number:#{low.acc_number}\tName:#{low.name}\tBalance:INR#{low.balance}"
end

puts "\nEnter the Acc No, Amount, code (1 for deposit, 0 for withdrawal):"
acc_no = gets.chomp
amount = gets.to_i
code = gets.to_i
Bank.transaction(acc_no,amount,code)




