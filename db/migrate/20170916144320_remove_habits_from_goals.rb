class RemoveHabitsFromGoals < ActiveRecord::Migration[5.0]
  def change
    remove_reference :goals, :habits, foreign_key: true
  end
end
