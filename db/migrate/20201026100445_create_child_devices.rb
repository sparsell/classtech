class CreateChildDevices < ActiveRecord::Migration
  def change
    create_table :child_devices do |t|
      t.integer :child_id 
      t.integer :device_id 
    end
  end
end
