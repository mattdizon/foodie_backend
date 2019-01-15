class ChefRecipesController < ApplicationController
  def index
      @recipes = ChefRecipe.all
      render json: @recipes
  end
  def show
      @recipe = ChefRecipe.find(params[:id])

      render json: {id: @recipe.id, user_id: @recipe.user_id, recipe_name: @recipe.recipe_name, difficulty: @recipe.difficulty,
          cuisine: @recipe.cuisine, time: @recipe.time, description: @recipe.description, thumbnail: @recipe.thumbnail,
          video: @recipe.video,
          recipe_ingredients: @recipe.recipe_ingredients.map do |prop|
            {
                id: prop.id,
                name: prop.name
            }
        end,
        recipe_instructions: @recipe.recipe_instructions.map do |prop|
              {
                  id: prop.id,
                  instruction: prop.instruction
              }
          end,
          images: @recipe.images.map do |image|
              {
                  id: image.id,
                  url: image.url
              }
          end
        }
  end

  def create
      @recipe = ChefRecipe.new(recipe_params)
      @recipe.video = ChefRecipe.turn_to_embed(@recipe.video)
      @recipe.save!
      render json: @recipe
  end

  private
  def recipe_params
      params.require(:user_ingredient).permit(:user_id, :recipe_name,
          :difficulty, :cuisine, :time,:description,:thumbnail, :video, recipe_ingredients: [:chef_recipes_id,:name],
          recipe_instructions: [:chef_recipes_id,:instruction],images:[:chef_recipes_id,:url])
  end
end
