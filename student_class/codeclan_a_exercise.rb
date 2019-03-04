#Tests from A exercise
class Student
  # attr_reader :name, :cohort
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talking
    return "I can talk!"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end


# Tests from B exercise
