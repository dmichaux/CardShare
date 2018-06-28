class Recipient < ApplicationRecord

	belongs_to :user

	default_scope -> { order(:name) }

	before_save :downcase_email

	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { within: 5..254 },
										format: { with: VALID_EMAIL_REGEX }

	def send_card(current_user)
		RecipientMailer.card(self, current_user).deliver_now
		UserMailer.confirmation(current_user, self).deliver_now
	end

	private

	def downcase_email
		self.email.downcase!
	end
end
