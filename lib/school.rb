class School
  attr_reader :roster
  def initialize(school)
    @school = school #initializes name of school
    @roster = {} #initializes a roster with empty hash
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
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