class Unit < ActiveRecord::Base
  belongs_to :user
  has_many :course_units
  has_many :courses, :through => :course_units

end
