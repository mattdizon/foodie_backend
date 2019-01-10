class CreateRecipeInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_instructions do |t|
      t.references :chef_recipe, foreign_key: true
      t.string :instruction

      t.timestamps
    end
  end
end
