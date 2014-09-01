class StudentAnswersController < ApplicationController

  def show
    @student_answer = StudentAnswer.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @student_answer = @question.student_answers.create(student_answer_params)
    @student_answer.student_id = current_user.id
    @student_answer.question_id = @question.id
    @student_answer.save
    flash[:notif] = ">— Your answer has been posted with success! —<"
    redirect_to question_path(@question)
  end

  def edit
    @student_answer = StudentAnswer.find(params[:id])
  end

  def update
     @student_answer = StudentAnswer.find(params[:id])
     @student_answer.update(student_answer_params)
     flash[:notif] = ">— Your answer has been updated with success —<"
     redirect_to account_path
  end

  private

  def student_answer_params
    params.require(:student_answer).permit(:content)
  end

end
