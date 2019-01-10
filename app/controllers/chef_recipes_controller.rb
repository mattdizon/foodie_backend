class ChefRecipesController < ApplicationController
  def index
      @recipes = ChefRecipe.all
      render json: @recipes
  end
  def show
      @recipe = ChefRecipe.find(params[:id])

      render json: {id: @recipe.id, user_id: @recipe.user_id, recipe_name: @recipe.recipe_name, difficulty: @recipe.difficulty, cuisine: @recipe.cuisine, time: @recipe.time, description: @recipe.description,
      recipe_ingredients: @recipe.recipe_ingredients.map do |prop|
            {
                id: prop.id,
                ingredient: prop.ingredient
            }
        end,
        recipe_instructions: @recipe.recipe_instructions.map do |prop|
              {
                  id: prop.id,
                  instruction: prop.instruction
              }
          end

        }
  end

  def create
      @recipe = ChefRecipe.create!(recipe_params)
      render json: @recipe
  end

  private
  def recipe_params
      params.require(:user_ingredient).permit(:user_id, :recipe_name,
          :difficulty, :cuisine, :time,:description, recipe_ingredients: [:chef_recipes_id,:ingredient],recipe_instructions: [:chef_recipes_id,:instruction])
  end
end
