class RecipeInstructionsController < ApplicationController
    def index
        @instructions = RecipeInstruction.all
        render json: @instructions
    end
    def create
        @instruction = RecipeInstruction.create!(instruction_params)
        render json: @instruction
    end
    private
    def instruction_params
        params.require(:recipe_instruction).permit(:instruction, :chef_recipe_id)
    end
end
