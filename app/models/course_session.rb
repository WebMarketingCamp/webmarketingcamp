class CourseSession < ActiveRecord::Base
  belongs_to :course
  has_many :enrollments

end
