require 'rubygems'
require 'need'
need{"../lib/nonce"}

class Student
  include Nonce
  
  def add_to_roster
    add_student_to_class self
  end
  
  def to_s
    "#{@last_name}, #{@first_name} - age #{@age}"
  end
  
  def first_name name
    @first_name = name
  end
  
  def last_name name
    @last_name = name
  end
  
  def age years
    @age = years
  end
end
