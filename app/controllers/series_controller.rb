




class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def show
    @serie = Series.find(params[:id])
  end

  def new
    @serie = Series.new
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy
    redirect_to series_index_path, notice: "Série supprimée avec succès."
  end


  def create
    @serie = Series.new(series_params)
    if @serie.save
      redirect_to series_path(@serie), notice: "Série créée avec succès."
    else
      render :new
    end
  end

  private

  def series_params
    params.require(:series).permit(:title, :description, :url)
  end
end
