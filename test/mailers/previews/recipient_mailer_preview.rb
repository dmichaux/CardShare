# Preview all emails at http://localhost:3000/rails/mailers/recipient_mailer
class RecipientMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/recipient_mailer/card
  def card
  	recipient 	 = Recipient.first
  	current_user = User.first
    RecipientMailer.card(recipient, current_user)
  end

end
