class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :image_link
      t.boolean :premium

      t.timestamps
    end
  end
end
