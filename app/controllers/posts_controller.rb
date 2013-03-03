class PostsController < ApplicationController

  skip_before_filter :authenticate_user!, :only => [:index, :show]
  before_filter :auth, :except => [:index, :show]


  # GET /posts
  # GET /posts.json
  def index
    @tags = Post.tag_counts_on(:tags)
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end
 
  # GET /search
  # GET /search.json
  def search
    @posts = Post.tagged_with(params[:q])
    
    respond_to do |format|
      format.html # search.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = current_user.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    
    @post = Post.new(params[:post])
    @post.user = current_user
    
    # tags.each do |tag|
    #   @post.tags.new({:title => tag})
    # end
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to dashboard } # This isnt right though.. should be user profile / username
      format.json { head :no_content }
    end
  end

  private

  def auth
    # This is horrible, but I'll figure it out later
    unless current_user
      redirect_to posts_path, notice: 'You need to be logged in to do that'
      unless current_user = @post.user
        redirect_to posts_path, notice: "You don't have permission to do that"
      end
    end
  end
  
end
