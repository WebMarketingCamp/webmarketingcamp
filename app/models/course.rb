class Course < ActiveRecord::Base
  belongs_to :user
  has_many :course_units
  has_many :units, :through => :course_units

end
