class VotesController < ApplicationController

  def create
    @vote.where(post: params[:post_id], user: current_user).first_or_create

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

  def destroy
    @vote.find_by_user_and_post(current_user, params[:post_id]).destroy

    respond_to do |format|
      format.json { head :ok }
      format.html { head :ok }
    end
  end

end
