require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeClanStudent < MiniTest::Test

  def setup
@codeclan_student = CodeClanStudent.new("Sarah", 5)
  end

def get_student_name

assert_equal("Sarah", @codeclan_student.name)
end

# def get_student_cohort
#
# end
