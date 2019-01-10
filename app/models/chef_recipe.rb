class ChefRecipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :recipe_instructions
    accepts_nested_attributes_for :recipe_ingredients
    accepts_nested_attributes_for :recipe_instructions

end
