class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to '/users/show'
    else
      redirect_to root_path
  end
end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
