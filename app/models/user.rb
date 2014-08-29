class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :courses, foreign_key: :owner_id
  has_many :units
  has_many :enrollments
  has_many :guides
  has_many :assignments
  has_many :student_answers, foreign_key: :student_id

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_inclusion_of :status, :in => %w(student pending_mentor mentor admin)

  after_create :send_welcome_email

  def full_name
    "#{first_name} #{last_name}"
  end


  private

  def send_welcome_email
    UserMailer.welcome_message(self).deliver
  end

end
