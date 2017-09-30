class Api::GoalsController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def index
      render status: 200, json: {
        goals: Goal.all
      }.to_json
    end

    def show
      goal = Goal.find(params[:id])

      render status: 200, json: {
        goal: goal
      }.to_json
    end

    def update
      goal = Goal.find(params[:id])
      if goal.update(goal_params)
        render status: 201, json: {
          message: "Thanks for keeping us in the loop",
          goal: goal
        }.to_json
      else
        render status: 422, json: {
          message: "Sorry, we didn't quite get that",
          errors: goal.errors
        }.to_json
      end
    end

    private
      def goal_params
        params.require(:goal).permit(:title, :score, :goal_id)
      end
end
