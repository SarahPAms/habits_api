class CreateHabits < ActiveRecord::Migration[5.0]
  def change
    create_table :habits do |t|
      t.string :habit_name
      t.text :habit_description
      t.references :frequency, foreign_key: true

      t.timestamps
    end
  end
end
