class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if current_user
      @user = User.find(current_user.id)
      @post = @user.posts.new(post_params)
      # @post = post.new(post_params)
      # @post[:user_id] = current_user.id
      if @post.save
        redirect_to posts_path
      else
        redirect_to :back
      end
    else
      flash[:alert] = "You are not logged in. Post Submission Disabled."
      redirect_to '/'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @post_comments = @post.comments
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end

end
