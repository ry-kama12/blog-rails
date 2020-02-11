class PostsController < ApplicationController
  def index
    @post = Post.limit(4)
    @posts = Post.last(4)
  end

  def new
    @post = Post.new
    @post.images.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to '/posts_new'
    end
  end

  def show
    @post = Post.find(params[:id])
    # render plain: params.inspect
    @post.images.build
    # @post.find(update_params)
    # @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  def edit
   @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(update_params)
    redirect_to action: :show
   else
    redirect_to root_path
   end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, images_attributes: [:image]).merge(user_id: current_user.id)
  end
 
  def update_params
    params.require(:post).permit(:title, :content, images_attributes: [:image, :_destroy, :id])
  end

# def image_params
#   @posts = params.permit(:title, :content, images_attributes: [:name])
# end
end
