module DeviseWhitelist
	extend ActiveSupport::Concern
	
	included do 
		before_filter :authenticate_user!,:configure_permitted_parameters, if: :devise_controller?
	
		protected

		def configure_permitted_parameters
			# devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
			# devise_parameter_sanitizer.permit(:account_update, keys: [:name])


			devise_parameter_sanitizer.for(:sign_up) << :name
			devise_parameter_sanitizer.for(:account_update) << :name
		end

		before_action :set_source

		def set_source
			puts session[:source].inspect
			session[:source] = params[:q] if params[:q]
		end
	end
end