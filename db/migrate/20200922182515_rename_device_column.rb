class RenameDeviceColumn < ActiveRecord::Migration
  def change
    add_column :devices, :device_type, :string
  end
end
