class CreateFitnessGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :fitness_goals do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :starting_value
      t.integer :ending_value
      t.references :members, null: false, foreign_key: true

      t.timestamps
    end
  end
end
