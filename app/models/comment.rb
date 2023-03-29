class Comment < ApplicationRecord
  belongs_to :blog_user
  belongs_to :post
end
