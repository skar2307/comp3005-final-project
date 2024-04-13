class ChangeTitleToName < ActiveRecord::Migration[7.1]
  def change
    rename_column :exercise_routines, :title, :name
    rename_column :exercises, :title, :name
  end
end
