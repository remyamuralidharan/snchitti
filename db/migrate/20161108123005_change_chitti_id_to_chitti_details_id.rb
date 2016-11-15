class ChangeChittiIdToChittiDetailsId < ActiveRecord::Migration
  def change
  	rename_column :chitti_users, :chitti_id, :chitti_detail_id
  end
end
