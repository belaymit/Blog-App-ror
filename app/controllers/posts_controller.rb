class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = 'Post created successfully'
      redirect_to roo_path
    else
      flash[:error] = 'The was an error while creating post'
      render :new
    end
  end

  def destroy
    # to do
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
