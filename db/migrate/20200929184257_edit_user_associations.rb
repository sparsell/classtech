class EditUserAssociations < ActiveRecord::Migration

  def change
    change_table :users do |t|
      t.remove :grade
      t.integer :child_id
      t.integer :device_id
      t.rename :password, :password_digest
    end
  end 
end