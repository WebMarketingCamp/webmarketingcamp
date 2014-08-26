class UserMailer < ActionMailer::Base

  default from: 'no-reply@webmarketingcamp.com'

  def welcome_message(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to WebMarketingCamp')
  end

end