class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    @posts = FeedPersonalizer.create(current_user)
    if current_user
      @post = current_user.posts.build
      @post.space_tag = SpaceTag.new
    end
  end
end
