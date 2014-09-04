class StudentAnswersController < ApplicationController

  def show
    @student_answer = StudentAnswer.find(params[:id])

    # IF string dans la student answer IS EGAL au string de la question_answer avec le status est TRUE
    # alors afficher
    @true_answer = @student_answer.question.question_answers.find_by_status("true")
    @false_answers = @student_answer.question.question_answers.where(status: "false")
    if @student_answer.content == @true_answer.content
      @true_or_false = "true"
    else
      @true_or_false = "false"
    end

  end

  def create
    @question = Question.find(params[:question_id])
    @student_answer = @question.student_answers.create(student_answer_params)
    @student_answer.student_id = current_user.id
    @student_answer.question_id = @question.id
    @student_answer.save
    flash[:notice] = ">— Your answer has been posted with success! —<"
    redirect_to question_path(@question)
  end

  def edit
    @student_answer = StudentAnswer.find(params[:id])
    @question = @student_answer.question
  end

  def update
     @student_answer = StudentAnswer.find(params[:id])
     @student_answer.update(student_answer_params)
     flash[:notice] = ">— Your answer has been updated with success —<"
     @question = @student_answer.question
     redirect_to question_path(@question)
  end

  def destroy
     @student_answer = StudentAnswer.find(params[:id])
     @student_answer.destroy
     flash[:notice] = "Your answer has been deleted."
     @question = @student_answer.question
     redirect_to question_path(@question)
  end


  private

  def student_answer_params
    params.require(:student_answer).permit(:content, :file)
  end

end
