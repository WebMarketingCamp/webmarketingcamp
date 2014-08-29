class Assignment < ActiveRecord::Base
  belongs_to :unit
  belongs_to :owner, class_name: 'User'
  has_many :questions
end