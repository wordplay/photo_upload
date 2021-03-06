class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
 
    if @photo.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private
  def photo_params
    params.require(:photo).permit(:photo_file)
  end
end
