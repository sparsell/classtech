class EditDevicesTable < ActiveRecord::Migration
  def change
    remove_column :devices, :child_id, :integer
  end
end
