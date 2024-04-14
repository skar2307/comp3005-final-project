class DropScaffoldsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :scaffolds
  end
end
