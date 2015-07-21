class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if current_user.admin?
      @user = User.find(current_user.id)
      @post = Post.new(post_params)
      # @post = post.new(post_params)
      # @post[:user_id] = current_user.id
      if @post.save
        respond_to do |format|
          format.html {redirect_to posts_path}
          format.js
        end
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
    respond_to do |format|
      format.html {redirect_to '/posts'}
      format.js
    end
  end

  private

  def post_params
    params.require(:post).permit(:subject, :body)
  end

end
