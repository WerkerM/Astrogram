class PersonalizeFeed
  def self.create(user)
    if user.nil?
      @posts = Post.last(5)
    else
      ids = user.following.pluck(:astronaut_id)
      @posts = Post.where(astronaut_id: ids)
    end
  end
end
