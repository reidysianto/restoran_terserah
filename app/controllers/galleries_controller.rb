class GalleriesController < ApplicationController
  def index
    @gallery = Gallery.new
    @last_image=Gallery.last #last image upload
  end
  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to galleries_path
    else
      render 'index'
    end
  end
end
