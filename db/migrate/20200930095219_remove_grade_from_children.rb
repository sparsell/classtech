class RemoveGradeFromChildren < ActiveRecord::Migration
  def change
    change_table :children do |t|
      t.remove :grade
    end

  end
end
