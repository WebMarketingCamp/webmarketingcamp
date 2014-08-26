class MentorsController < ApplicationController

  def index
    @mentors = User.where(status: "mentor")
  end

  def new
  end

end
