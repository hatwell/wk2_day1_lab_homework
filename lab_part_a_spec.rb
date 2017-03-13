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

  def test_set_name
      @student_1.set_name("Drizzy")
      assert_equal("Drizzy", @student_1.name)
  end

  def test_get_cohort
    assert_equal(14, @student_2.cohort)
  end

  def test_set_cohort
    @student_2.set_cohort(16)
    assert_equal(16, @student_2.cohort)
  end

  def test_student_can_talk
    @student_1.talk("I am talking")
    assert_equal(String, @student_1.talk("Words").class)
  end

  def test_say_favourite_language
    @student_1.say_favourite_language("Java")
    assert_equal("I love Java", @student_1.say_favourite_language("Java"))
  end
end
