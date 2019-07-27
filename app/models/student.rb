class Student

    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(student, boat_test, status, instructor) #YES
        BoatingTest.new(self, "boat_test", "status", Instructor)
    end

    def self.find_student(name) #YES
        self.all.find do |student|
            student.first_name == name
            student.first_name
        end
    end
#return the percentage of tests that the student has passed, a Float (so if a student has pas
#3 / 9 tests that they've taken, this method should return the Float 33.33
    def grade_percentage #YES
        totaltests = BoatingTest.all.find_all do |t|
            if t.student == self.first_name
                t.boat_test 
            end
        end
        totaltests = totaltests.length.to_f
        totalpassed = BoatingTest.all.find_all do |t|
            if t.status == "passing"
                t.student
            end
        end
        totalpassed = totalpassed.length.to_f
        percentage = (totaltests/totalpassed)
    end

end
