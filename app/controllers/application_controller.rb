class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	helper_method :require_admin

	def require_admin
	    unless current_admin 
	  	  redirect_to root_path, error: "You Need to login first" 	
	    end	
	end 

  	def after_sign_in_path_for(resource)
	   	blogs_path
	end

  	def after_sign_out_path_for(resource)
	    new_session_path(resource_name)
	end
end
