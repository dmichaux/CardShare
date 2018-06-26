class Recipient < ApplicationRecord

	default_scope -> { order(:name) }

	before_save :downcase_email

	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { within: 5..254 },
										format: { with: VALID_EMAIL_REGEX },
										uniqueness: { case_sensitive: false}
	validates :phone, format: { with: /\A\d{3}-\d{3}-\d{4}\z/ }

	def send_card(current_user)
		RecipientMailer.card(self, current_user).deliver_now
	end

	private

	def downcase_email
		self.email.downcase!
	end
end
