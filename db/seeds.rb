Frequency.destroy_all
Habit.destroy_all
Goal.destroy_all
Category.destroy_all


frequency1 = Frequency.create!(start: Date.today-5.days, end: Date.today, completed: false, times_completed: 5)
habits1 = Habit.create!(habit_name: "Eat food", habit_description: "PICA is bad", frequency: frequency1 )
goal1= Goal.create!(title: "live long and prosper", description:"I want to have my cake and eat it, too!", habit: habits1)

Category.create!([
  {title: "career", score: 5, goal: goal1}, {title: "money", score:5, goal: goal1},
  ])
