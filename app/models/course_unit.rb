class CourseUnit < ActiveRecord::Base
  belongs_to :unit
  belongs_to :course
end
