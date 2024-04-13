class ExerciseRoutine < ApplicationRecord
  has_many :exercise_routine_junctions
  has_many :exercises, through: :exercise_routine_junctions
end
