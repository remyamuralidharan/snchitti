class ChittiUser < ActiveRecord::Base
	belongs_to :user
	belongs_to :chitti_detail
end
