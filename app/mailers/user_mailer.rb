class UserMailer < ActionMailer::Base

  default from: 'no-reply@webmarketingcamp.com'

  def welcome_message(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to WebMarketingCamp')
  end

  def new_enrollment_student_message(user, course, mentor)
    @user = user
    @mentor = mentor
    @course = course
    mail(to: @user.email, subject: 'Your are now enrolled on a new course!')
  end

  def new_enrollment_mentor_message(user, course, mentor)
    @user = user
    @mentor = mentor
    @course = course
    mail(to: @mentor.email, subject: 'You have a new student to mentor!')
  end


end