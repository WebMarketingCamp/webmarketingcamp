class Unit < ActiveRecord::Base
  belongs_to :user
  has_many :course_units
  has_many :guides, through: :guide_units
  has_many :guide_units
  has_many :courses, through: :course_units
  has_many :assignments

end
