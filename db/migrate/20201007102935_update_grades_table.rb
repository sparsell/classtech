class UpdateGradesTable < ActiveRecord::Migration
  def change
    remove_column :grades, :child_id, :integer
    remove_column :grades, :device_id, :integer
  end
end
