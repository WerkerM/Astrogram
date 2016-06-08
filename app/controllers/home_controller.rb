class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    @posts = FeedPersonalizer.create(current_user).order(created_at: :DESC)
    if current_user
      @post = current_user.posts.build
      @space_tag = SpaceTag.new(post: @post)
    end
  end
end
