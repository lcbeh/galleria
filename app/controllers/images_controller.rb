class ImagesController < ApplicationController
  def index
  end

  def new
    @image = Image.new
  end

  def create
  end

  private

  def image_params

  end
end
