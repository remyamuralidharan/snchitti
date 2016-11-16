class ChangeDataTypeOfMobNoInUser < ActiveRecord::Migration
  def change
  	change_column :users, :mob_no, :text
  end
end
