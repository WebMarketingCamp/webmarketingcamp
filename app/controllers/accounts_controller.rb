class AccountsController < ApplicationController

  before_action :authenticate_user!

  def show
  end

  def reviews
    @mentor_reviews = MentorReview.all
  end

end