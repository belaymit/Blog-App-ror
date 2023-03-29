class CreateBlogUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_users do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.integer :postcount

      t.timestamps
    end
  end
end
