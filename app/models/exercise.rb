class Exercise < ApplicationRecord
  has_many :exercise_routine_junctions
  has_many :exercise_routines, through: :exercise_routine_junctions
end
