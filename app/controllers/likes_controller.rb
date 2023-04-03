class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @like = Like.new
    @like.post = @post

    if @like.save
      redirect_to roo_path
    else
      render 'posts/show'
    end
  end
end
