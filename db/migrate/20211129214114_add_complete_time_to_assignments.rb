class AddCompleteTimeToAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :complete_time, :int
  end
end
