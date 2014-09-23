class UserMailer < ActionMailer::Base
  default from: "prashant.abhishek7@gmail.com"

  def welcome(user)
  	@user = user
  	mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
