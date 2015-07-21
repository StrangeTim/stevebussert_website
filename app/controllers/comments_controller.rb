class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if current_user
      @comment[:username] = current_user.username
    elsif params[:comment][:username] == "" || params[:comment][:username] == nil
      @comment[:username] = "anonymous"
    else
      @comment[:username] = params[:comment][:username]
    end

    if @comment.save
      respond_to do |format|
        format.html {redirect to '/posts'}
        format.js
      end
    else
      redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :text)
  end
end
