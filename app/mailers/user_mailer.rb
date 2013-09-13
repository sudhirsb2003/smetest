class UserMailer < ActionMailer::Base

  default :from => "parityrails@gmail.com"

   def welcome_message(user)
     @user = user
     mail(:to => "<#{user.email}>", :subject => "Registered")
   end
end
