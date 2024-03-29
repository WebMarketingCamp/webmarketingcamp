class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :units
  has_many :enrollments

  has_many :courses, through: :enrollments
  has_many :created_courses, foreign_key: :owner_id, class_name: "Course"
  has_many :questions, through: :assignments

  has_many :guides, foreign_key: :owner_id
  has_many :assignments, foreign_key: :owner_id
  has_many :student_answers, foreign_key: :student_id
  has_many :mentor_reviews, foreign_key: :user_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_inclusion_of :status, :in => %w(student pending_mentor mentor admin)

  after_create :send_welcome_email

  def full_name
    "#{first_name} #{last_name}"
  end


  has_attached_file :photo,
    styles: { medium: "300x300>", thumb: "100x100>", circle: "35x35#", profile_circle: "180x180#" }

  validates_attachment_content_type :photo,
    content_type: /\Aimage\/.*\z/


  private

  def send_welcome_email
    UserMailer.welcome_message(self).deliver
  end

end
