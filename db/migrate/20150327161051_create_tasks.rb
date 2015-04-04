class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.time :time
      t.decimal :duration
      t.string :category
      t.text :subtasks
      t.text :notes
      t.boolean :recurring
      t.date :days

      t.timestamps
    end
  end
end