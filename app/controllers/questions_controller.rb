class QuestionsController < ApplicationController
  def create
    @assignment = Assignment.find(params[:assignment_id])
    @question = @assignment.questions.create(question_params)
    redirect_to assignment_path(@assignment)
  end

  private
    def question_params
      params.require(:question).permit(:question, :answer, :point_value)
    end
end
