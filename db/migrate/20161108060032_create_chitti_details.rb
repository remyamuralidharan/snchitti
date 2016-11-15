class CreateChittiDetails < ActiveRecord::Migration
  def change
    create_table :chitti_details do |t|
      t.integer :chitti_no
      t.text :chitti_name
      t.integer :amount
      t.integer :validity
      t.text :recurr_type
      t.integer :pay_amount

      t.timestamps null: false
    end
  end
end
