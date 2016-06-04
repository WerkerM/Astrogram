class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.astronaut_id = 1 # placeholder until auth is working
    @post.save
    redirect_to @post
  end

  def destroy
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :astronaut_id, :image_url, :video_url)
  end
end
