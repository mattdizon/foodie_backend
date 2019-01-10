class CreateUserIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ingredients do |t|
      t.references :user, foreign_key: true
      t.string :ingredient

      t.timestamps
    end
  end
end
