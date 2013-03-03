class DashboardController < ApplicationController
  def index
    @posts = current_user.posts
    @queue = current_user.bookmarks
  end
end
