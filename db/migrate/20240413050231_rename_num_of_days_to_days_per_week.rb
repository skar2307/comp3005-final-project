class RenameNumOfDaysToDaysPerWeek < ActiveRecord::Migration[7.1]
  def change
    rename_column :exercise_routines, :days_per_week, :days_per_week
  end
end
