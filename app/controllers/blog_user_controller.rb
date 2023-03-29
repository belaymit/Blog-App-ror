class BlogUserController < ApplicationController
  def index
    @users = BlogUser.all
  end
end
