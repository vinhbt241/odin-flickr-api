class PhotosController < ApplicationController
  require "flickr"

  def index 
    flickr = Flickr.new ENV["flickr_api_key"], ENV["flickr_secret_key"]

    unless params[:user_id].blank?
      @photos = flickr.photos.search(user_id: params[:user_id])
    else
      @photos = ""
    end

  end
end
