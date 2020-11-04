# create School class

# initialize School with empty hash called roster

# add_student to an to a key value pair. Key = Grade and value is students in that grade 

# use if else to create new key value pairs if the grade doesnt exist

require 'pry'
class School
    attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end
  

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort 
        sorted_roster = {}
        roster.each do |grade, students|
            sorted_roster[grade] = students.sort
    
        end
        sorted_roster
    end

end
