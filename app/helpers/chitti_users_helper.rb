module ChittiUsersHelper
	def get_chitti_no(chitti_detail_id)
		ChittiDetail.where("id = ?",chitti_detail_id).try(:first).try(:chitti_no)
	end
	def get_chitti_name(chitti_detail_id)
		ChittiDetail.where("id = ?",chitti_detail_id).try(:first).try(:chitti_name)
	end
end
