class BlogUser < ApplicationRecord
  has_many :posts, foreign_key: 'blog_user_id'
  has_many :comments, foreign_key: 'blog_user_id'
  has_many :likes, foreign_key: 'blog_user_id'

  def recent_three_posts
    posts.order(created_at: :desc).limit(3)
  end
  
end
