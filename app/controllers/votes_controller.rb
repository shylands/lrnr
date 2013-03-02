class VotesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    Vote.where(post_id: post.id, user_id: current_user.id).first_or_create

    respond_to do |format|
      format.json { head :ok }
      format.html { render :text => "Voted up" }
    end
  end

  def destroy
    Vote.where(user_id: current_user.id, post_id: params[:post_id]).destroy_all

    respond_to do |format|
      format.json { head :ok }
      format.html { render :text => "Vote removed" }
    end
  end

end
