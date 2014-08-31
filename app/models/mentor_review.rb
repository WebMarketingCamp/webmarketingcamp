class MentorReview < ActiveRecord::Base
  belongs_to :student_answer
  has_one :question, through: :student_answer

  has_one :owner,
    class_name: 'User',
    through: :assignment,
    source: :user

end
