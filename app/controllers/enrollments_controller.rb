class EnrollmentsController < ApplicationController

  def create
    @course = Course.find(params[:course_id])
    @enrollment = @course.enrollments.create
    @enrollment.user_id = current_user.id
    @enrollment.save
    flash[:notice] = ">— You are enrolled with success ! —<"
    redirect_to course_path(@course)
  end


end
