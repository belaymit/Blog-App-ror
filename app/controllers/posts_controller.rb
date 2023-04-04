class PostsController < ApplicationController
  def index
    @post = Post.all.order('created_at, DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # create new post
  end
end
