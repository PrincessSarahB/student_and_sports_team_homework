class CodeClanStudent

# attr_accessor :student_name, :student_cohort
def initialize(name, cohort)
  @student_name = name
  @cohort = cohort

end

def student_name()

  return @student_name

end

def student_cohort()

  return @cohort

end

def set_student_name(new_name)

  @student_name = new_name

end

def set_student_cohort(cohort)

  @cohort = cohort

end

def get_student_to_talk
  return "I can talk!"
end

def favourite_language(language)

return "I love #{language}"


end
end
