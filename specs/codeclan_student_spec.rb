require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeClanStudent < MiniTest::Test

  def setup
@codeclan_student = CodeClanStudent.new("Sarah", 5)
  end

def test_get_student_name

assert_equal("Sarah", @codeclan_student.get_student_name)

end

def test_get_student_cohort

assert_equal(5, @codeclan_student.get_student_cohort)

end

def test_update_student_name

@codeclan_student.name = "Matilda"
assert_equal("Matilda", @codeclan_student.get_student_name)

end

end
