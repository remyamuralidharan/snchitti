class AddNameAndDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :text
    add_column :users, :house_name, :string
    add_column :users, :place, :string
    add_column :users, :city, :string
    add_column :users, :mob_no, :integer
    add_column :users, :email, :text
  end
end
