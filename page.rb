require 'faker'

class Page
	attr_accessor :file
    
    def details
    	self.file
    end
end


obj = Page.new
obj.file = Faker::File.file_name('foo/bar', 'baz', 'doc')
puts obj.details





