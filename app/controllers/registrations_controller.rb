class RegistrationsController < Devise::RegistrationsController
	
	private

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation,
																 :name, :phone, :github, :linkedin)
	end

	def account_update_params
		params.require(:user).permit(:email, :password, :password_confirmation, :current_password,
																 :name, :phone, :github, :linkedin)
	end
end
