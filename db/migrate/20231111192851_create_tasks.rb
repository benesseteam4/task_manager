class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.datetime :deadline
      t.integer :duration
      t.boolean :completed

      t.timestamps
    end
  end
end
