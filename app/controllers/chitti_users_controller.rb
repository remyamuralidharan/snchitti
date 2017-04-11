class ChittiUsersController < ApplicationController
	def index
		if params[:id].present?
			@chitti_users = ChittiUser.where(chitti_detail_id: params[:id])
		else
			@chitti_users = ChittiUser.all
		end
	end

	def new
		@id = params[:id] if params[:id].present?
		@chitti_user = ChittiUser.new
		get_chitti_and_user_details
	end

	def create
		@chitti_user = ChittiUser.new(user_id: params[:user_id], chitti_detail_id: params[:chitti_detail_id])
		if @chitti_user.save
			redirect_to chitti_users_path, :flash => {:notice => "User Saved Successfully!!"} 
		else
			get_chitti_and_user_details
			render 'new'
		end
	end
	def refresh_token_test
	    options = {
	      body: {
	        client_id:     "745330384534-pvfsvi0gck39vr3ejihb6c0r3j2613lk.apps.googleusercontent.com",
	        client_secret: "JLkTEMukgPiMip2_1A31gVRi",
	        refresh_token: "1/sU87gqemDuA9IHI3cLl4lh-SyIt0yIdAqSteMLfsoYYeuoIlDyDYJLwJtz3QhdhY",
	        grant_type:    "refresh_token"
	      },
	      headers: {
	        'Content-Type' => 'application/x-www-form-urlencoded'
	      }
	    }
	    @response = HTTParty.post('https://accounts.google.com/o/oauth2/token', options).parsed_response
	    respond_to do |format|
	      format.json { render :json=> @response.to_json }
	    end
    end  

	private

	def get_chitti_and_user_details
		p "params[:id]-----------#{params[:id]}"
		@chitties = @id.present? ? ChittiDetail.where(id: @id) : ChittiDetail.all
		@users  = User.all
	end
end
