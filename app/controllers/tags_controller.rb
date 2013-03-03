class TagsController < ApplicationController
  def index
  end

  def show
    @posts = Post.tagged_with(params[:tag])
  end
end
