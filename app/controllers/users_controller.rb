class UsersController < ApplicationController
  def show
    @user = User.find_by_username(params[:username])
    @posts = Post.all
  end
end
