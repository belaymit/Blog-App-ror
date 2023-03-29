class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.text :bio
      t.integer :coments_count
      t.integer :likes_count
      t.references :blog_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
