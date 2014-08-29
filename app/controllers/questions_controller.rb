class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @assignment = @question.assignment
    @unit = @assignment.unit
    @others_questions = Question.all
  end

end
