class CommentsController < ApplicationController

  def new

  end

  def create
    comment = Comment.create(comment_params)
# byebug
    redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
  end
end
