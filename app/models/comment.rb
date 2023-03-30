class Comment < ApplicationRecord
  belongs_to :blog_user
  belongs_to :post

  after_save :update_comments_counter

  private

  def update_comments_counter
    post.update(coments_count: post.comments.count)
  end
end
