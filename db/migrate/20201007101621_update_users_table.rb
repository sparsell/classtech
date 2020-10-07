class UpdateUsersTable < ActiveRecord::Migration
  def change
    remove_column :users, :child_id, :integer
    remove_column :users, :device_id, :integer
    remove_column :users, :email, :string
    add_column :users, :user_name, :string
  end
end
