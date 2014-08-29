class StudentAnswersController < ApplicationController

  def show
    @student_answer = StudentAnswer.find(params[:id])
  end

end
