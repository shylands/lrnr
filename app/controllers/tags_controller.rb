class TagsController < ApplicationController
  def index
  end
  
  # GET /search
  # GET /search.json
  def search
    @tags = Tag.all #:q
    
    respond_to do |format|
      format.html # search.html.erb
      format.json { render json: tags }
    end
  end

  def show
    @posts = Post.tagged_with(params[:tag])
  end
end
