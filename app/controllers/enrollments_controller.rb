class EnrollmentsController < ApplicationController

before_action :authenticate_user!

  def create
    @course = Course.find(params[:course_id])
    @enrollment = @course.enrollments.create
    @enrollment.user_id = current_user.id
    @enrollment.save
    flash[:notice] = ">— You are enrolled with success ! —<"

    @user = @enrollment.user
    @mentor = @enrollment.course.owner

    UserMailer.new_enrollment_student_message(@user, @course, @mentor).deliver
    UserMailer.new_enrollment_mentor_message(@user, @course, @mentor).deliver

    redirect_to course_path(@course)
  end


end
