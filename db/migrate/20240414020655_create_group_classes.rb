class CreateGroupClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :group_classes do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :is_recurring
      t.references :trainers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
