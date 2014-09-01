class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @student = current_user
    @unit = @course.units
  end

end
