class Question < ActiveRecord::Base
  belongs_to :assignment
  has_many :student_answers
  has_many :question_answers, foreign_key: :question_id
end