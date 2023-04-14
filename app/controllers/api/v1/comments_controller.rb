class Api::V1::CommentsController < Api::V1::ApplicationController
  before_action :set_post, :set_user

  def index
    comments = Post.find(params[:post_id]).comments
    render json: comments, status: :ok
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment, status: :created
    else
      render json: { errors: comment.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post_id = Post.find(params[:post_id])
  end

  def set_user
    @user_id = User.find(params[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:text).merge(post_id: @post_id.id, author_id: @user_id.id)
  end
end