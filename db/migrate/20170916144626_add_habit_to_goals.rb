class AddHabitToGoals < ActiveRecord::Migration[5.0]
  def change
    add_reference :goals, :habit, foreign_key: true
  end
end
