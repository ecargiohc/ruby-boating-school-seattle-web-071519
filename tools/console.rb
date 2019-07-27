require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mia = Student.new("Mia")
lyle = Student.new("Lyle")
ty = Student.new("Ty")
george = Student.new("George")

prof1 = Instructor.new("prof1")
prof2 = Instructor.new("prof2")
prof3 = Instructor.new("prof3")

test1 = BoatingTest.new(mia, "ah", "passing", prof1)
test2 = BoatingTest.new(lyle, "ahh", "passing", prof2)
test3 = BoatingTest.new(ty, "ahhh", "failing", prof3)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

