require_relative "06-crud-bcrypt"

class Student
  include Crud
  # getter & setter for instance variables
  attr_accessor :first_name, :last_name, :password, :email

  def initialize(first_name, last_name, password, email)
    @first_name, @last_name, @password, @email = first_name, last_name, password, email
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}, Password: #{@password}"
  end
end

student_1 = Student.new("James", "Vongampai", "9292", "james@gmail.com")
p student_1.create_hash_digest(student_1.password)
p student_1.to_s
