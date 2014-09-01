class MentorReviewsController < ApplicationController

  def show
    @mentor_review = MentorReview.find(params[:id])
  end

## pas sur si ça sert cette fonction (mauvais copie colle ?) :
  # def create
    # @course = Course.find(params[:course_id])
    # @enrollment = @course.enrollments.create
    # @enrollment.user_id = current_user.id
    # @enrollment.save
  # end

  def create
    @student_answer = StudentAnswer.find(params[:student_answer_id])
    @mentor_review = @student_answer.mentor_reviews.create(mentor_review_params)
    @mentor_review.student_answer_id = @student_answer.id
    @mentor_review.user_id = current_user.id
    @mentor_review.save
    flash[:notif] = ">— Your mentor review has been posted with success! —<"
    @question = @student_answer.question
    redirect_to question_path(@question)
  end

  def edit
    @mentor_review = MentorReview.find(params[:id])
  end

  def update
     @mentor_review = MentorReview.find(params[:id])
     @mentor_review.update(mentor_review_params)
     flash[:notif] = ">— Your mentor review has been updated with success —<"
     @question = @mentor_review.student_answer.question
     redirect_to question_path(@question)
  end

  def destroy
     @mentor_review = MentorReview.find(params[:id])
     @mentor_review.destroy
     flash[:notice] = "Your mentor review has been deleted."
     @question = @mentor_review.student_answer.question
     redirect_to question_path(@question)
  end

  private

  def mentor_review_params
    params.require(:mentor_review).permit(:content)
  end

end
