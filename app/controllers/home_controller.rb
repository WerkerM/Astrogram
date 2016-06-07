class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    if current_user
      @post = current_user.posts.build
      followed_astronaut_ids = current_user.following.pluck(:astronaut_id)
      @posts = Post.where(astronaut_id: followed_astronaut_ids)
    else
      @posts = Post.last(5)
    end
  end
end
