class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]

  def index
    @posts = Post.all.order(created_at: :DESC)
  end

  def show
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      flash[:alert] = "There was a problem with your post!"
      render root_path
    end
  end

  def destroy
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :astronaut_id, :image_url, :video_url, space_tag_attributes: [:x, :y, :z, :relational_body, :units])
  end

  # def space_tag_params
  #   params[:post].require(:space_tag).permit(:x, :y, :z, :relational_body, :units)
  # end
end
