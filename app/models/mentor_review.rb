class MentorReview < ActiveRecord::Base
  belongs_to :student_answer
  has_one :question, through: :student_answer
  belongs_to :user

## pas sur de devoir le garder, depuis qu'on a ajouté le champ user_id pour savoir qui est le mentor :
  # has_one :owner,
    # class_name: 'User',
    # through: :assignment,
    # source: :user

end
