class MentorsController < ApplicationController

  def index
    @mentors = User.where(status: "mentor")
  end

  def new
  end

  def show
    @mentor = User.find(params[:id])
  end

end
