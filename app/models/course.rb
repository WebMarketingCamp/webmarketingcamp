class Course < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'

  has_many :course_units
  has_many :enrollments
  has_many :units, through: :course_units
  has_many :users, through: :enrollments
end
