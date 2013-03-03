class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:username])
    @queued_posts = Post.all
    @learnt_posts = Post.all
  end
end
