class CreateHealthMetrics < ActiveRecord::Migration[7.1]
  def change
    create_table :health_metrics do |t|
      t.string :name
      t.integer :value
      t.references :members, null: false, foreign_key: true

      t.timestamps
    end
  end
end
