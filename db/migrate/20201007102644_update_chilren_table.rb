class UpdateChilrenTable < ActiveRecord::Migration
  def change
    add_column :children, :user_id, :integer
    add_column :children, :grade_id, :integer
  end
end
