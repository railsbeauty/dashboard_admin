class ApplicationController < ActionController::Base
  protect_from_forgery

	 def after_sign_in_path_for(user)
	  if current_user.is_Admin?
	     '/dashboard'
	  	else
	  		:root
	  	end
	 end
end
