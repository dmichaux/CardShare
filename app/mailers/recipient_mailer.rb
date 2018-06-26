class RecipientMailer < ApplicationMailer

	add_template_helper(ApplicationHelper)

  def card(recipient, current_user)
  	@recipient 		= recipient
  	@current_user = current_user
    mail to: recipient.email, from: current_user.email,
    		 subject: "#{current_user.name}'s Business Card"
  end
end
