class ImagesController < ApplicationController
  def show
    @post = Post.find(params[:post_id])
    @image = Image.find(image_params)
  end

  private

  def image_params
   params.require(:image).permit(:image)
  end
  
end
