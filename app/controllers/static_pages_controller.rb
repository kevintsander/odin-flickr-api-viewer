require 'photo_loader'

class StaticPagesController < ApplicationController
  def index
    @photos = []
    return unless params[:user_id]

    loader = PhotoLoader.new
    @photos = loader.user_photo_urls(params[:user_id])
  end
end
