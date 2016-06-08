class FeedPersonalizer
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def personalize
    follow_count = Follow.where(user: user).length
    if user.nil? || follow_count == 0
      default
    else
      following
    end
  end

  def default
    Post.all.limit(10).order(created_at: :desc)
  end

  def following
    ids = user.following.pluck(:astronaut_id)
    posts = Post.where(astronaut_id: ids)
    if posts.count < 5
      posts += default
    end
    posts
  end
end
