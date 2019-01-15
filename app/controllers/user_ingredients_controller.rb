class UserIngredientsController < ApplicationController
  def index
      @ingredients = UserIngredient.all
      render json: @ingredients
  end

  def showIngredients
      @ingredients = UserIngredient.where(user_id: params[:user_id])
      render json: @ingredients
  end

  def create
      @ingredient = UserIngredient.create!(ingredient_params)
      render json: @ingredient
  end

  private
  def ingredient_params
      params.require(:user_ingredient).permit(:user_id, :ingredient)
  end
end
