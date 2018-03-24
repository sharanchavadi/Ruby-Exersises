#example for method scopes
class Cart
	attr_accessor :user, :product

	def initialize(data)
		@id=rand(1000)
		@user=data["user"]
		@product=data["product"]
	end

	#public scope- instance method
	def confirm_order
		puts "your order is confirmed"
		puts send_notification
	end

	def reconfirm_order
		puts "your order is reconfirmed"
		puts send_notification
    end

    def order_status(status)
    	if status=="shipped"
    		puts notify_user("shipped")
    	elsif status=="delivered"
    		puts notify_user("delivered")
    	end
    end

    private
    def notify_user(status)
       puts "your order has been #{status}"
    end

    def send_notification
    	puts "email: #{self.user} your #{self.product} has been confirmed"
    end

    def this_is_private
    end
end

c1=Cart.new({"user"=>"sharan","product"=>"mobile"})
puts c1.confirm_order

puts c1.reconfirm_order
puts c1.order_status("shipped")
puts c1.order_status("delivered")
