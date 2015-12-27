class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, default: false
      t.text :content, default: ''

      t.timestamps null: false
    end
  end
end
