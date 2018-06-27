class UserMailer < ApplicationMailer

  def confirmation(current_user, recipient)
  	@current_user = current_user
  	@recipient 		= recipient
    mail to: current_user.email,
    		 subject: "Confirmation from CardShare"
  end
end
