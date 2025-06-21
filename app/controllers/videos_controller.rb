class VideosController < ApplicationController
  def index
    @videos = Video.all.order(created_at: :desc)
  end

  def show
    @video = Video.find(params[:id])
  end
end



class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to videos_path, notice: "Vidéo ajoutée avec succès."
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:video).permit(:title, :description, :file)
  end
end
