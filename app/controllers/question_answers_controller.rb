class QuestionAnswersController < ApplicationController

  def show
    @question_answers = QuestionAnswer.find(params[:id])
  end

end
