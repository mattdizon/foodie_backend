class RecipeIngredientsController < ApplicationController
    def index
        @ingredients = RecipeIngredient.all
        render json: @ingredients
    end
    def create
        @ingredient = RecipeIngredient.create!(ingredient_params)
        render json: @ingredient
    end
    private
    def ingredient_params
        params.require(:recipe_ingredient).permit(:name, :chef_recipe_id)
    end
end
