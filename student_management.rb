require 'faker'
class StudentManagement
	attr_accessor :roll_number, :name, :department, :course, :year_of_joining
    @@students = []
  def initialize(data)
    @roll_number = data["roll_number"]
    @name = data["name"]
    @department = data["department"]
    @course = data["course"]
    @year_of_joining = data["year_of_joining"]
    @@students.push(self)
  end

  def self.all
      @@students
  end

	def self.list_by_year(year)
        students_list = []
        students_list = @@students.find_all{|student| student.year_of_joining == year}
        students_list.each do |student|
            puts "Name: #{student.name}\t#{student.year}"
        end

        if students_list.empty?
        	puts "No students available for this year"
        end
    end

	def self.data_by_rollnumber(rollnum)
		student_info = @@students.find{|student| student.roll_number == rollnum}
		puts "Roll number: #{student_info.roll_number}\tName: #{student_info.name}\tDepartment: #{student_info.department}\tCourse: #{student_info.course}\tYear of joing: #{student_info.year_of_joining}"
        if student_info == nil
           puts "Invalid roll number"
        end
    end

end

10.times do
  data = {"roll_number" => 2050..2100 "name" => Faker::Name.name, "department" => ["CS","IS","Civil"].sample(1), "course" => ["Engg in computers","enggg in information","engg in Civil"].sample(1), "year_of_joining" => Faker::Date.backward(1)}
   StudentManagement.new(data)
end

puts "List of students:"
StudentManagement.all.each do |student|
   puts "Roll number: #{student.roll_number}\tName: #{student.name}\tDepartment: #{student.department}\tCourse: #{student.course}\tYear of joing: #{student.year_of_joining}"
end
puts "Enter the year to list names of all students who joined on this year:"
year = gets.chomp
puts StudentManagement.list_by_year(year)
puts "Enter the roll number to print data of student:"
rollnum = gets.chomp
puts StudentManagement.data_by_rollnumber(rollnum)


