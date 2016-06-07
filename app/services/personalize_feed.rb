class PersonalizeFeed
  def self.create(user)
    followed_ids = user.following.pluck(:astronaut_id)
    @posts = Post.where(astronaut_id: followed_ids)
  end
end
