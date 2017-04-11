class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	# include AuthHelper
	# require 'ruby_outlook'
	# outlook_client = RubyOutlook::Client.new
	def before_sign_in_path
		new_user_session_path
	end
	def after_sign_out_path_for(resource_or_scope)
		new_user_session_path
	end
	def after_sign_in_path_for(resource)
	   homes_path
	end
	def home
    # Display the login link.
	    login_url = get_login_url
	    render html: "<a href='#{login_url}'>Log in and view my email</a>".html_safe
  	end
end
