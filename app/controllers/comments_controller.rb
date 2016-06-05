class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to :home
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :author_id, :user_id)
  end

end
