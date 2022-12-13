# frozen_string_literal: true

require 'flickr'

class PhotoLoader
  def initialize
    @flickr = Flickr.new ENV['flickr_api_key'], ENV['flickr_api_secret']
  end

  def user_photo_urls(user_id)
    @flickr.photos.search(user_id: user_id)
           .map do |result|
      # info = @flickr.photos.getInfo(photo_id: result.id)
      Flickr.url(result)
    end
  end
end
