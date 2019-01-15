class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.references :chef_recipe, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
