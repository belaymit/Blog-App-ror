class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :blog_user, null: false, foreign_key: {to_table: :blog_user}
      t.references :post, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
