class HomeController < ApplicationController
  skip_before_action :redirect_unauthenticated_user

  def index
    @posts = PersonalizeFeed.create(current_user)
    @post = current_user.posts.build if current_user
  end
end
