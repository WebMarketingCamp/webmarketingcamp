class MentorReviewsController < ApplicationController

  def show
    @mentor_reviews = MentorReview.all
  end

end
