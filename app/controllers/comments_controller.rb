class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    render :json => { :comment => render_to_string('comments/_comment', :layout => false, :locals => { :comment => @comment }) }
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :author_id, :user_id, :post_id)
  end
end
