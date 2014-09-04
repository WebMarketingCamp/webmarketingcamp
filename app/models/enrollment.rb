class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :course_session
  has_one :course, through: :course_session
end
