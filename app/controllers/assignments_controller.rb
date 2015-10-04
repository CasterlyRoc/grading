class AssignmentsController < ApplicationController
  def index
    @assignment = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.update(assignment_params)
      redirect_to @assignment
    else
      render 'edit'
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      redirect_to @assignment
    else
      render 'new'
    end
  end

  private
    def assignment_params
      params.require(:assignment).permit(:Title, :due_date, :tot_points)
    end

end
