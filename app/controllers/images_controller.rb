class ImagesController < ApplicationController
  def index
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:notice] = "Image uploaded successfully"
      redirect_to @image
    else
      flash[:notice] = "Please fill in all required fields"
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  private

  def image_params
    params.require(:image).permit(:title, :category, :description, :avatar)
  end
end
