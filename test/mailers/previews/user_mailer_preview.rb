# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/confirmation
  def confirmation
  	current_user = User.first
  	recipient 	 = Recipient.first
    UserMailer.confirmation(current_user, recipient)
  end

end
