class PostsController < ApplicationController
  def index
    @post = Post.limit(4)
    # @post = Post.includes(:images).order('created_at DESC')
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
    # @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  private

  def post_params
    @post = params.require(:post).permit(:title, :content, images_attributes: [:name])
  end

end
