class VotesController < ApplicationController

  layout false

  def create
    @post = Post.find(params[:post_id])
    Vote.where(post_id: @post.id, user_id: current_user.id).first_or_create
    @vote = Vote.where(user_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    Vote.where(user_id: current_user.id, post_id: @post.id).destroy_all

    respond_to do |format|
      format.js
    end
  end

end
