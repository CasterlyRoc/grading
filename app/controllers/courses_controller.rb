class CoursesController < ApplicationController

  before_action :get_course, only: [:show,:edit,:update,:destroy]

  def get_course
  	@course = Course.find(params[:id])
  end

  def index
    @courses = Course.all
  end

  def show

  end

  def new
    @course = Course.new
  end

  def edit

  end

  def create
    @instructor = Instructor.find(params[:instructor_id])
    @course = @instructor.courses.create(course_params)
    redirect_to instructor_path(@instructor)
  end

  def update

    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course.destroy

    redirect_to courses_path
  end

  private
    def course_params
      params.require(:course).permit(:title, :description)
    end
end
