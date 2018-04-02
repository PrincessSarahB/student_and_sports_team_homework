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

end

# def get_student_cohort
#
# end
