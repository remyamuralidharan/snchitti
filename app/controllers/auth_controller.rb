class AuthController < ApplicationController
    def gettoken
      token = get_token_from_code params[:code]
      session[:azure_token] = token.to_hash
      session[:user_email] = get_user_email token.token
       # redirect_to mail_index_url
      # redirect_to mail_send_message_path
      redirect_to homes_path
    end
end
