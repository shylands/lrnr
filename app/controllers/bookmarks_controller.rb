class BookmarksController < ApplicationController
 def create
    post = Post.find(params[:post_id])
    Bookmark.where(post_id: post.id, user_id: current_user.id).first_or_create

    respond_to do |format|
      format.json { head :ok }
      format.html { render :text => "Saved" }
    end
  end

  def destroy
    post = Post.find(params[:post_id])
    Bookmark.where(post_id: post.id, user_id: current_user.id).destroy

    respond_to do |format|
      format.json { head :ok }
      format.html { render :text => "Vote removed" }
    end
  end
end
