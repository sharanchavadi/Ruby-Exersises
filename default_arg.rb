def cart_total(bill_amount,discount = 10) #default value for your parameter
	return (bill_amount - (bill_amount*discount/100))
end

final_bill = cart_total(1000)
puts final_bill
final_bill = cart_total(1000,25)
puts final_bills