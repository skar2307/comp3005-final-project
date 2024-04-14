class CreatePersonalTrainingSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :personal_training_sessions do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.references :members, null: false, foreign_key: true
      t.references :trainers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
