require('minitest/autorun')
require('minitest/rg')
require_relative('./lab_part_a')

class StudentTest < MiniTest::Test

  def setup
    @student_1 = Student.new("Drake", 13)
    @student_2 = Student.new("Zlatan", 14)
  end

  def test_get_name
    assert_equal("Drake", @student_1.name)
    assert_equal("Zlatan", @student_2.name)
  end


end
