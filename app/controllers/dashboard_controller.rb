class DashboardController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    @posts = current_user.posts
    @queue = current_user.bookmarks
  end
end
