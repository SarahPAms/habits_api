class Api::CircleOfFulfillmentController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
    render status: 200, json: {
      categories: Category.all
    }.to_json
  end

  def show
    category = Category.find(params[:id])

    render status: 200, json: {
      category: category
    }.to_json
  end

  def update
    category = Category.find(params[:id])
    if category.update(category_params)
      render status: 201, json: {
        message: "Thanks for keeping us in the loop",
        category: category
      }.to_json
    else
      render status: 422, json: {
        message: "Sorry, we didn't quite get that",
        errors: category.errors
      }.to_json
    end
  end

  private
    def category_params
      params.require(:category).permit(:title, :score, :goal_id)
    end

end
