class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :systolic
      t.integer :diastolic
      t.integer :mood
      t.belongs_to :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
