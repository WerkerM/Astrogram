class FollowsController < ApplicationController

  def create
    astronaut = User.find_by(id: follow_params[:astronaut_id])
    user = current_user
    if astronaut.followed_by?(user)
      follow = astronaut.followed.where(user: user)
      follow.destroy_all
      render json: { :status => 'not following' }
    else
      follow = Follow.create(astronaut: astronaut, user: user)
      follow.save
      render json: { :astronaut_id => follow.astronaut_id,
                     :user_id => follow.user_id,
                     :status => 'following' }
    end
  end

  private
  def follow_params
    params.require(:follow).permit(:astronaut_id, :user_id)
  end

end
