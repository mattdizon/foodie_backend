class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :chef_recipe, foreign_key: true
      t.text :url

      t.timestamps
    end
  end
end
