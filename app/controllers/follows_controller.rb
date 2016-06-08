class FollowsController < ApplicationController
  def create
    astronaut = User.find_by(id: follow_params[:astronaut_id])
    user = current_user
    @update = FollowUpdater.new(astronaut, user).execute
    render json: @update
  end

  private
  def follow_params
    params.require(:follow).permit(:astronaut_id, :user_id)
  end
end
