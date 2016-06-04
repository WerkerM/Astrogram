class UserMailer < ApplicationMailer
  default :from => "asdlkfjwoieur@soihwejkfnfl.com"

  def confirmation_email(user)
     @user = user
     mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration Confirmation for Astrogram!")
  end


end
