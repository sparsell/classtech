class DeleteDeviceType < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :type 
    end
  end
end
