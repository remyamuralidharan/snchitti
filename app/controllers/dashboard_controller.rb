class DashboardController < ApplicationController
	def index
		if params[:search].present?
			@chitti_details = ChittiDetail.where(chitti_no: params[:search])
		else
			@chitti_details = ChittiDetail.all
		end
	end
end
