class RecipientController < ApplicationController

	def new
		@recipient = Recipient.new
	end

	def create
		@recipient = Recipient.new(recipient_params)
		if @recipient.save
			@recipient.send_card
			flash[:notice] = "Card sent to #{@recipient.name}"
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def recipient_params
		params.require(:recipient).permit(:name, :email, :phone)
	end
end