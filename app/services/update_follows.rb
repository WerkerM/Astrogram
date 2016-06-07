class UpdateFollows
  attr_accessor :astronaut, :user

  def initialize(astronaut, user)
    @astronaut = astronaut
    @user = user
  end

  def do
    if astronaut.followed_by?(user)
      self.remove_follow
      { :status => 'not following' }
    else
      self.add_follow
      { :astronaut_id => astronaut.id,
        :user_id => user.id,
        :status => 'following' }
    end
  end

  def remove_follow
    follow = astronaut.followed.where(user: user)
    follow.destroy_all
  end

  def add_follow
    follow = Follow.create(astronaut: astronaut, user: user)
    follow.save
  end
end
