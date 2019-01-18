# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = ChefRecipe.create(user_id:1,recipe_name: "Spicy Mushroom Larb",
cuisine:"Asian", time:"30-40 minutes", description:"Don’t even think about tossing, stirring, or shaking that pan until the mushrooms are golden brown and crisp. You want to achieve that flavorful texture before incorporating the additional aromatics. This recipe is part of the 2019 Feel Good Food Plan, our ten-day plan for starting the year off right.",
thumbnail:"https://assets.bonappetit.com/photos/5c1a6e3c7b8a892ce36043b0/16:9/w_2560,c_limit/FGFP-Mushroom-Larb-Horizontal.jpg", video:"https://www.youtube.com/watch?v=rMGy4-EBb8w&t=16s" )
 steps  = ["Coarsely chop or crush peanuts into small pieces; set aside.", "Heat 3 Tbsp. oil in a large nonstick skillet over medium-high until shimmering. Add mushrooms and cook, undisturbed, until bottom sides are golden brown, about 5 minutes. Toss and continue to cook, tossing occasionally and reducing heat as needed to avoid scorching, until golden brown all over, about 4 minutes more. Add scallions, garlic, and ginger, followed by remaining 1 Tbsp. oil, and cook, stirring often, until softened and fragrant, about 2 minutes. Remove from heat; season lightly with salt. Mix in shallot, chile, mint, fish sauce, and half of peanuts. Taste and season with more salt if needed.",
 "Transfer larb to a large bowl. Serve with cabbage, lime wedges, and remaining peanuts alongside."]

 steps.each do |step|
     b = RecipeInstruction.create(chef_recipe_id: 1, instruction: step )
 end

ingredients = ["1/4cup roasted, skinless peanuts",
"4 Tbsp. vegetable oil, divided",
"12 oz. shiitake mushrooms, stems removed, quartered",
"3 scallions, thinly sliced",
"2 garlic cloves, finely grated",
"1 1 inch piece ginger, peeled, finely grated",
"Kosher salt",
"1 medium shallot, thinly sliced into rings, rinsed, drained",
"1 red chile, such as Holland, Fresno, or Thai, thinly sliced",
"1 cup mint leaves, torn if large",
"1 Tbsp. fish sauce",
"1/4 head of green cabbage, halved crosswise, leaves separated",
"Lime wedges (for serving)"]
 ingredients.each do |ing|
     b = RecipeIngredient.create(chef_recipe_id: 1, name: ing )
 end




 a = ChefRecipe.create(user_id:1,recipe_name: "Feel-Better Chicken and Rice Soup",
 cuisine:"American", time:"20-30 minutes", description:"If you want this take on classic chicken soup to have a similar consistency to congee, add 10–15 minutes to the cooking time so that it can become nice and thick. This recipe is part of the 2019 Feel Good Food Plan, our ten-day plan for starting the year off right.",
 thumbnail:"https://assets.bonappetit.com/photos/5c1a6e3d545f2f2dd6233528/16:9/w_2560,c_limit/FGFP-Sweet-Potato-Rice-Soup-Horizontal.jpg", video:"https://www.youtube.com/watch?v=yj2j_K8c7XE&t=1s" )
  steps  = ["Bring chicken, rice, garlic, ginger, and 5 cups water to a boil in a large saucepan. Add a big pinch of salt. Reduce heat to medium-low and simmer, uncovered and stirring occasionally, until rice has swelled and chicken is firm, 10–12 minutes.", "Add potatoes to pan and cook over medium-low heat, still uncovered and stirring occasionally, until soup is thickened and potatoes and rice are tender, 15–20 minutes longer. Transfer chicken to a bowl and shred with 2 forks, then return to pot. Stir in lemon juice and soy sauce; taste soup and season with salt if needed.",
  "Divide soup among bowls. Top with cilantro and lots of black pepper."]

  steps.each do |step|
      b = RecipeInstruction.create(chef_recipe_id: 2, instruction: step )
  end

 ingredients = ["3/4 lb. skinless, boneless chicken thighs",
    "1/3 cup jasmine rice, rinsed",
"4 garlic cloves, thinly sliced",
"1 2 inch  piece ginger, peeled, thinly sliced",
"Kosher salt",
"2 small sweet potatoes, unpeeled, cut into 1/2 inch-thick rounds",
"2 Tbsp. fresh lemon juice",
"2 Tbsp. soy sauce",
"1/2 bunch cilantro, coarsely chopped",
"Freshly ground black pepper"]
  ingredients.each do |ing|
      b = RecipeIngredient.create(chef_recipe_id: 2, name: ing )
  end
