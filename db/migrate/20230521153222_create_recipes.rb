class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :cooking_time
      t.integer :user_id

      t.timestamps
    end
  end
end
