class Like < ApplicationRecord
  belongs_to :blog_user
  belongs_to :post

  after_save :update_likes_counter

  private

  def update_likes_counter
    post.update(likes_count: post.likes.count)
  end
end
