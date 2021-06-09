# code here!
require 'pry'

class School
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if !@roster[grade]  
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
end
