class CreateExerciseRoutines < ActiveRecord::Migration[7.1]
  def change
    create_table :exercise_routines do |t|
      t.string :title
      t.integer :days_per_week
      t.text :description

      t.timestamps
    end
  end
end
