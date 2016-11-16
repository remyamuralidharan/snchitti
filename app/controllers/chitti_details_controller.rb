class ChittiDetailsController < ApplicationController
	def new
		@chitti_detail = ChittiDetail.new
	end
	def create
		@chitti_detail = ChittiDetail.new(chitti_detail_params)
		if @chitti_detail.save
			redirect_to dashboard_index_path
		else
			@errors = @chitti_detail.errors.full_messages.to_sentence
			render 'new'
		end
	end

	private
	
	def chitti_detail_params
		params.require(:chitti_detail).permit(:chitti_no,:chitti_name,:amount,:validity,:recurr_type,:pay_amount)
	end
end
