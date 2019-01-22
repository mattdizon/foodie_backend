# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#u = User.create(first_name:"Andy", last_name:"B", username: "AndyB", email: "123@ao.c", password:"123",chef:true)
a = ChefRecipe.create(user_id:1, recipe_name: "Chocolate-Cashew Chia Pudding",
cuisine:"American", time:"15-20 minutes",
description:"This chia pudding is delicious on its own—and even better when layered with maple yogurt as a parfait. Leftover maple yogurt can be repurposed for breakfast and topped with fruit and granola. It’s a choose-your-own-adventure kind of dessert. This recipe is part of the 2019 Feel Good Food Plan, our ten-day plan for starting the year off right.",
thumbnail:"https://assets.bonappetit.com/photos/5c0fe205ab8bba2d9b0b515a/16:9/w_1028,c_limit/fgfpdessertrecipe-UNEDITED.jpg",
video:"https://www.youtube.com/embed/jY-8SrEGrLY" )
 steps  = ["Blend dates, cashew milk, cashews, cocoa powder, vanilla, salt, and cinnamon in a blender on high speed until very smooth,
     about 1 minute. Transfer date milk to a quart-size jar or resealable container. Stir in chia seeds. Cover and chill at least 6 hours"
     "Stir yogurt and ¼ cup maple syrup in a medium bowl. Transfer to a quart-size jar or resealable container (or reserve yogurt container and use that!).",
     "To serve, alternate layering a few spoonfuls of chia pudding and maple yogurt in a small ramekin or 8-oz. glass. Drizzle with maple syrup and sprinkle with sea salt. Dust with cinnamon."]

 steps.each do |step|
     b = RecipeInstruction.create(chef_recipe_id: 1, instruction: step )
 end

ingredients = ["7 oz. Medjool dates (about 13), pitted",
                "3 cups cashew milk",
                "2/4 cup raw cashews",
                "3 Tbsp. cocoa powder",
                "2 tsp. vanilla extract",
                "1 1/2 tsp. kosher salt",
                "1 tsp. ground cinnamon",
                "1/2 cup white chia seeds",
                "2 cups whole-milk or coconut yogurt",
                "3/4 cup pure maple syrup, plus more for serving",
                "Flaky sea salt",
                "Ground cinnamon (for serving)"]
 ingredients.each do |ing|
     b = RecipeIngredient.create(chef_recipe_id: 1, name: ing )
 end
