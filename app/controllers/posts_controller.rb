class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @post.images.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/users/show'
    else
      redirect_to '/posts_new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  private

  def post_params
    @post = params.require(:post).permit(:title, :content)
  end

end
