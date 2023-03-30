class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :blog_user, null: false, foreign_key: {to_table: :user}
      t.string :title
      t.text :text
      t.integer :coments_count
      t.integer :likes_count

      t.timestamps
    end
  end
end
