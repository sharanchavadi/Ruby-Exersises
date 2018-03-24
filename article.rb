
#passing hash as an argument to the constructor
class Article
	attr_accessor :title, :body, :status, :visibility

	
	def initialize(data)
		@title = data["title"]
		@body = data["body"]
		@status = data["status"]
		@visibility = data["visibility"]
	end
end

data = {"title" => "web development course", "body" => "full stack developer"}

a1 = Article.new(data)
puts a1.inspect


data = {"title" => "web development course", "body" => "full stack developer", "status" => "pending", "visibility" => "public"}

a2 = Article.new(data)
puts a2.inspect


data = {}
a3 = Article.new(data)
puts a3.inspect