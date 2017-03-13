require('minitest/autorun')
require('minitest/rg')
require_relative('./lab_part_a')

class StudentTest < MiniTest::Test

  def setup
    @student_1 = Student.new("Drake", 13)
    @student_2 = Student.new("Zlatan", 14)
  end 


end
