class CreateExerciseRoutineJunctions < ActiveRecord::Migration[7.1]
  def change
    create_table :exercise_routine_junctions do |t|
      t.references :exercise_routine, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
