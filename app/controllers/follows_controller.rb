class FollowsController < ApplicationController

  def create
    @follow = Follow.create(follow_params)
  end




  private
  def follow_params
    params.require(:follow).permit(:astronaut_id, :user_id)
  end

end
