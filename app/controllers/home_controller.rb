class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    if current_user
      @post = current_user.posts.build
    end
      @posts = Post.all.order(created_at: :desc).take(10)
  end
end
