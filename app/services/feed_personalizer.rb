class FeedPersonalizer
  def self.create(user)
    if user.nil?
      @posts = Post.last(10)
    elsif Follow.where(user: user).length == 0
      @posts = Post.last(10)
    else
      ids = user.following.pluck(:astronaut_id)
      @posts = Post.where(astronaut_id: ids)
    end
  end
end
