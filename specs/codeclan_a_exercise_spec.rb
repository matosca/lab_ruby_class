require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_a_exercise')

class TestCodeClan < MiniTest::Test

  #Test from A exercise
  def test_get_student_name
    student = Student.new("Annabel", "E29")
    assert_equal("Annabel", student.name)
  end
  def test_get_cohort
    student = Student.new("Annabel", "E29")
    assert_equal("E29", student.cohort)
  end
  def test_set_student_name
    student = Student.new("Annabel", "E29")
    student.name = "Maria"
    assert_equal("Maria", student.name)
  end
  def test_set_cohort
    student = Student.new("Annabel", "E29")
    student.cohort = "E20"
    assert_equal("E20", student.cohort)
  end
  def test_student_talk
    student = Student.new("Annabel", "E29")
    assert_equal("I can talk!", student.talking)
  end
  def test_student_favourite_language
    student = Student.new("Annabel", "E29")
    result = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
