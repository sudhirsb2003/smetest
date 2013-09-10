class UserMailer < ActionMailer::Base

 #def welcome_message(user)
 # mail(:to => user.email, :subject => "Welcome!", :from => "sudhirsb2003@gmail.com")
 #end


  default :from => "sudhirsb2003@gmail.com"
   
   def welcome_message(user)
     @user = user
     #attachments["rails.png"] = File.read("#{Rails.root}/public/images/logo.png")
     mail(:to => "<#{user.email}>", :subject => "Registered")
   end
end

