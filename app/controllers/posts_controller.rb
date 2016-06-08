class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def show
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.space_tag = SpaceTag.create(space_tag_params)
    if @post.save
      redirect_to root_path
    else
      flash[:alert] = "There was a problem with your post!"
      render :posts
    end
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

  def space_tag_params
    params[:post].require(:space_tag).permit(:x, :y, :z, :relational_body, :units)
  end
end
