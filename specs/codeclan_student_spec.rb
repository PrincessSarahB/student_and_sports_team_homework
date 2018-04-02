require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeClanStudent < MiniTest::Test

  def setup
@codeclan_student = CodeClanStudent.new("Sarah", 5)
  end

def test_student_name

assert_equal("Sarah", @codeclan_student.student_name)

end

def test_student_cohort

assert_equal(5, @codeclan_student.student_cohort)

end

def test_set_student_name

@codeclan_student.set_student_name("Matilda")
assert_equal("Matilda", @codeclan_student.student_name)

end

def test_set_student_cohort

@codeclan_student.set_student_cohort(6)
assert_equal(6, @codeclan_student.student_cohort)

end

def test_get_student_to_talk

  assert_equal("I can talk!", @codeclan_student.get_student_to_talk)

end

#Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

def test_favourite_language
assert_equal("I love Ruby", @codeclan_student.favourite_language("Ruby"))
end
end
