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
  end

  def destroy
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end
end
