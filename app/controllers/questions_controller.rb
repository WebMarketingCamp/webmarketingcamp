class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @assignment = @question.assignment
    @unit = @assignment.unit
    @others_questions = Question.where.not(id: @question.id)
    @student_answer = @question.student_answers.where(student_id: current_user.id).first
    if @student_answer
      @mentor_reviews = @student_answer.mentor_reviews.where(student_answer_id: @student_answer.id).first
    end
  end

end
