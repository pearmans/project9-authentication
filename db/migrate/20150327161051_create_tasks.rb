class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.time :time
      t.decimal :duration
      t.string :category
      t.text :subtasks, :array => true
      t.text :notes
      t.boolean :recurring
      t.date :days, :array => true

      t.timestamps
    end
  end
end
