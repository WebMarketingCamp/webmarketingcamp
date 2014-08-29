class Question < ActiveRecord::Base
  belongs_to :assignment
  has_many :student_answers
end
