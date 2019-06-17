class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	private
	def after_sign_out_path_for(recouse)
		 new_user_session_path
  	end

  	protected
	 def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email,:sex,:style])
	 end
end
