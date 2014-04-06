class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, deafault: false
  end
end
