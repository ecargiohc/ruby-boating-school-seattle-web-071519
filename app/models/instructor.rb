class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name) #YES
        passed = BoatingTest.all.find do |t| 
            t.student == student && t.boat_test == test_name
        end
        if passed
            passed.status ="passed"
        else
            BoatingTest.new(student, boat_test, "passed", self)
        end
    end
        
    def fail_student(student, test_name) #YES
        failed = BoatingTest.all.find do |t|
            t.student == student && t.boat_test == test_name
        end
        if failed 
            failed.status = "failed"
        else
            BoatingTest.new(student, boat_test, "failed", self)
        end
    end
            

    end

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
