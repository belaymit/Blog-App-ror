class Post < ApplicationRecord
  belongs_to :blog_user
  has_many :comments
  has_many :likes

  after_save :update_posts_counter

  def recent_five_comments
    comments.last(5)
  end

  private

  def update_posts_counter
    blog_user.update(posts_counter: blog_user.posts.count)
  end
end
