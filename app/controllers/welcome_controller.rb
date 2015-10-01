class WelcomeController < ApplicationController
  def index
  	@instructors = Instructor.all
  end
end
