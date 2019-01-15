class ChefRecipe < ApplicationRecord
    belongs_to :user
    has_many :recipe_ingredients
    has_many :recipe_instructions
    has_many :images
    accepts_nested_attributes_for :recipe_ingredients
    accepts_nested_attributes_for :recipe_instructions
    accepts_nested_attributes_for :images





    def self.turn_to_embed(link)
     link_array= link.split("watch?v=")
     link_array.insert(1, "embed/")
     link_array.join
   end



end
