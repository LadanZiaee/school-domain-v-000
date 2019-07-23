class School
  attr_accessor :roster
  def initialize(school)
    @school = school #initializes name of school
    @roster = {} #initializes a roster with empty hash
  end
  
  def add_student(name, grade)
   
    if roster.include?(grade)==false #doesn't replace  grade when adding a school
      roster[grade] = [] #set key to open array to add value to an array in key
    end
    roster[grade] << name
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort 
    roster.each do |grade, name|
      roster[grade] = name.sort
    end
  end
end