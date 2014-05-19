class UserMailer < ActionMailer::Base
  #A value for all methods in the class.
  default from: "from@example.com"

  def newSocietyEmail(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
