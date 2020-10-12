class RemoveDeviceLimit < ActiveRecord::Migration
  def change
    remove_column :devices, :limits, :boolean
  end
end
