class StudentAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :student, class_name: 'User'
  has_many :mentor_reviews

end
