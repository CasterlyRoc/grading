class WelcomeController < ApplicationController
  def index
  	@instructors = Instructor.all
  	@students = Student.all
  	@courses = Course.all
  end
end
