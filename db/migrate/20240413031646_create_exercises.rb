class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.string :title
      t.integer :sets
      t.integer :reps_per_set

      t.timestamps
    end
  end
end
