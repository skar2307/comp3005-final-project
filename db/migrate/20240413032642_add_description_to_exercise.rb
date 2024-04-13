class AddDescriptionToExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :exercises, :description, :text
  end
end
