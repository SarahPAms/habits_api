class Api::HabitsController < ApplicationController
    skip_before_filter :verify_authenticity_token
    before_action :set_goal

    def index
      render status: 200, json: {
        categories: Habit.all
      }.to_json
    end

    def show
      habit = Habit.find(params[:id])

      render status: 200, json: {
        habit: habit
      }.to_json
    end

    def update
      habit = Habit.find(params[:id])
      if habit.update(habit_params)
        render status: 201, json: {
          message: "Thanks for keeping us in the loop",
          habit: habit
        }.to_json
      else
        render status: 422, json: {
          message: "Sorry, we didn't quite get that",
          errors: habit.errors
        }.to_json
      end
    end

    private
      def set_goal
        @goal = Goal.find(params[:goal_id])
      end

      def habit_params
        params.require(:habit).permit(:title, :score, :frequency_id)
      end
end
