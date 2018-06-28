class RecipientsController < ApplicationController

	def index
		@recipients = current_user.recipients
	end

	def new
		@recipient = Recipient.new
	end

	def create
		@recipient = Recipient.new(recipient_params)
		@recipient.card_sent_at = Time.current
		if @recipient.save
			@recipient.send_card(current_user)
			flash[:success] = "Card sent to #{@recipient.name}"
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def recipient_params
		params.require(:recipient).permit(:name, :company, :email, :phone, :user_id)
	end
end
