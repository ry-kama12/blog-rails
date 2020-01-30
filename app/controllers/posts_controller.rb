class PostsController < ApplicationController
  def index
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
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
