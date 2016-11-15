class CreateChittiUsers < ActiveRecord::Migration
  def change
    create_table :chitti_users do |t|
      t.integer :chitti_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
