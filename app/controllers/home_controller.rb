class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.take(10)
  end
end
