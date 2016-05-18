require_relative 'student'

class StudentRepository
  attr_reader :students

  def initialize(students)
    @students = students
  end

  def add_student(name, email)
    students << Student.new(name, email)
  end

  def all_emails
    students.map { |student| student.email }
  end

  def all_names
    students.map { |student| student.name }
  end

  def find_by_email(email)
    students.find { |student| student.email == email } 
  end

  def print_roster
    time    = Time.now
    message = "Here's the current roster as of #{time}:\n"
    message += "----------------------------------------\n"
    students.each do |student|
      message += "#{student.name}: #{student.email}\n"
    end
    message
  end
end

####################################################

student_1 = Student.new("rachel", "rachel@turing.io")
student_2 = Student.new("mike", "mike@turing.io")
student_3 = Student.new("horace", "horace@turing.io")

student_repo = StudentRepository.new([student_1, student_2, student_3])

puts student_repo.print_roster
student_repo.add_student("steve", "steve@turing.io")
puts student_repo.print_roster
student = student_repo.find_by_email("mike@turing.io")
puts student.name