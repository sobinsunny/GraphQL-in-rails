class Users::RegistrationsController < Devise::RegistrationsController

	prepend_before_action :require_no_authentication, only: [:cancel]
	before_action  :configure_permitted_parameters


	def new
		super
	end

	def create
		super
	end

	def update
		super
	end

	protected

	def after_sign_up_path_for(resource)
		new_user_session_path
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name])
	end

end 