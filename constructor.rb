class ContactForm
	attr_accessor :name, :email, :subect, :phone, :message

	def initialize(name, email, subject, phone, message)
		@name = name
		@email = email
		@subject = subject
		@phone = phone
		@message = message
	end
end

cf1 = ContactForm.new("sharan", "example@gmail.com", "web course", "99856546456", "fdsfsdfsfsfgfg")
puts cf1.inspect