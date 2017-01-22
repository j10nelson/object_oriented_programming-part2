class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{name}"
  end
end

class Student < Person
  def learn
      "I get it!"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end

# Create an instance of Instructor whose name is "Chris" and call his greeting.
chris = Instructor.new("Chris")
chris.greetings

# Create an instance of Student whose name is "Cristina" and call her greeting.
christina = Student.new("Christina")
christina.greetings

# Call the teach method on your instructor instance and call the learn method on your student.
chris.teach
christina.learn
