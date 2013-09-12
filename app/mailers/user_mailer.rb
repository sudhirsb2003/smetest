class UserMailer < ActionMailer::Base

  default :from => "parityrails@gmail.com"

   def welcome_message(user)
     @user = user
     #attachments["rails.png"] = File.read("#{Rails.root}/public/images/logo.png")
     mail(:to => "<#{user.email}>", :subject => "Registered")
   end
end
