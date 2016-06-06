class HomeController < ApplicationController
  def index
    @post = Post.new
    @comment = Comment.new
    @posts = Post.all.order(created_at: :desc).take(10)
  end
end
