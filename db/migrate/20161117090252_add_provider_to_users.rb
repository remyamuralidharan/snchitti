class AddProviderToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :provider, :string
  	change_column :users, :uid, :string
  end
end
