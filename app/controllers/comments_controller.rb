class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if current_user
      @comment[:user_id] = current_user.id
    else
      @comment[:user_id] = 1
    end
    if @comment.save
      redirect_to post_comment_path(@post, @comment)
    else
      redirect_to :back
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:text)
  end
end
