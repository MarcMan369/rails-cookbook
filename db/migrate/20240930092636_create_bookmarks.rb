class CreateBookmarks < ActiveRecord::Migration[7.2]
  def change
    create_table :bookmarks do |t|
      t.integer :recipe_id
      t.integer :category_id
      t.string :comments

      t.timestamps
    end
  end
end
