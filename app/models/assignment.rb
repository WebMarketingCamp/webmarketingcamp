class Assignment < ActiveRecord::Base
  belongs_to :unit
  has_many :questions, foreign_key: :assignment_id
  belongs_to :owner, class_name: 'User'

end
