class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    if current_user
      @posts = PersonalizeFeed.create(current_user)
      @post = current_user.posts.build
    else
      @posts = Post.last(5)
    end
  end
end
