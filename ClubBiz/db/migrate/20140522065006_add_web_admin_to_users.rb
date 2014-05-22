class AddWebAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :webAdmin, :boolean
  end
end
