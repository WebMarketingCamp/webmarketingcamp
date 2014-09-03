class StudentAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :student, class_name: 'User'
  has_many :mentor_reviews

  has_attached_file :file

  validates_attachment_content_type :file, content_type: /.*/

end
