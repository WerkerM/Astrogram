class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    feed = FeedPersonalizer.new(current_user)
    @posts = feed.personalize
    if current_user
      @post = current_user.posts.build
      @space_tag = SpaceTag.new(post: @post)
    end
  end
end
