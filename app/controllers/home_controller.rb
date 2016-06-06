class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    @post = current_user.posts.build
    @comment = Comment.new
    @posts = Post.all.order(created_at: :desc).take(10)
  end
end
