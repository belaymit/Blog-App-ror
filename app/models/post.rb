class Post < ApplicationRecord
  belongs_to :blog_user, foreign_key => 'blog_user_id'
  has_many :comments
end
