



class VideosController < ApplicationController
  def index
    @videos = Video.all.order(created_at: :desc)
  end

  def show
    @video = Video.find(params[:id])
  end
end
