Frequency.destroy_all
Habit.destroy_all
Goal.destroy_all
Category.destroy_all


frequency1 = Frequency.create!(start: Date.today-5.days, end: Date.today, completed: false, times_completed: 5)
habit1 = Habit.create!(habit_name: "Eat food", habit_description: "PICA is bad", frequency: frequency1 )

goal1= Goal.create!(title: "I set the limits that I need to", description:"I tell people when enough is enough!", habit: habit1)
goal2= Goal.create!(title: "Feel energized and nourished by the food I eat.", description:"I make good food descisions", habit: habit1)
goal3= Goal.create!(title: "To feel well-rested and clear-headed", description:"I want to feel amazing by taking care of myself", habit: habit1)
goal4= Goal.create!(title: "To be more in touch with a higher power.", description:"I want to have my cake and eat it, too!", habit: habit1)
goal5= Goal.create!(title: "I want to be empowered by my own life!", description:"I want to have my cake and eat it, too!", habit: habit1)
goal6= Goal.create!(title: "I want to call my own shots", description:"I want to have my cake and eat it, too!", habit: habit1)

Category.create!([
  {title: "Finance & Career", score: 5, goal: goal1},
  {title: "Fitness", score:5, goal: goal2},
  {title: "Relationships", score: 5, goal: goal3},
  {title: "Food", score:5, goal: goal4},
  {title: "Self Care & Sleep", score: 5, goal: goal5}, {title: "Spirituality & Creativity", score:5, goal: goal6},
  ])
