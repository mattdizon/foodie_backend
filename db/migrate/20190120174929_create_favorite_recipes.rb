class CreateFavoriteRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_recipes do |t|
    t.user_id :references
    t.chef_recipe_id :references
      t.timestamps
    end
  end
end
