class PostsController < ApplicationController
  before_action :set_poster
  before_action :set_post, only: [:update, :edit]
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  # GET /posts/new
  def new
    @post = @poster.posts.build  
  end

  
  # POST /posts
  # POST /posts.json
  def create
    @post = @poster.posts.build(post_params)
    puts @post.inspect
    respond_to do |format|
      if @post.save
        format.html { redirect_to new_poster_post_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    puts @post.inspect
    #respond_to do |format|
     # if @post.update(post_params)
    #    format.html { redirect_to @post, notice: 'Post was successfully updated.' }
   #     format.json { render :show, status: :ok, location: @post }
   #   else
    #    format.html { render :edit }
     #   format.json { render json: @post.errors, status: :unprocessable_entity }
    #  end
   # end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions

    # Only allow a list of trusted parameters through.

  def set_poster
    @poster = Poster.find(params[:poster_id])
  end
  def set_post
    @post = @poster.posts.find(params[:id])
  end 
    def post_params
      params.require(:post).permit(:post_typle, :post_url, :posters_id)
    end
end
