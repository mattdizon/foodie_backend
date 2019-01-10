class CreateChefRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :chef_recipes do |t|
      t.references :user, foreign_key: true
      t.string :recipe_name
      t.string :difficulty
      t.string :cuisine
      t.string :time
      t.string :description
      t.timestamps
    end
  end
end
