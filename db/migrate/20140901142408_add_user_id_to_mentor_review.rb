class AddUserIdToMentorReview < ActiveRecord::Migration
  def change
    add_reference :mentor_reviews, :user, index: true
  end
end