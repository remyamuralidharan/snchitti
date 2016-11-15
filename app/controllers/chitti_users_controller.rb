class ChittiUsersController < ApplicationController
	def index
		if params[:id].present?
			@chitti_users = ChittiUser.where(chitti_detail_id: params[:id])
		else
			@chitti_users = ChittiUser.all
		end
	end
	def new
	end
	def create
	end
end
