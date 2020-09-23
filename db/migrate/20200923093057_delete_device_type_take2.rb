class DeleteDeviceTypeTake2 < ActiveRecord::Migration
  def change
    change_table :devices do |t|
      t.remove :type
    end 
  end
end
