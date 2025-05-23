
class Admin::SeriesController < ApplicationController
  before_action :authenticate_admin!

  def index
    @series = Series.all
  end

  def edit
    @serie = Series.find(params[:id])
  end

  def update
    @serie = Series.find(params[:id])
    if @serie.update(series_params)
      redirect_to admin_series_index_path, notice: "Série mise à jour"
    else
      render :edit
    end
  end

  def destroy
    @serie = Series.find(params[:id])
    @serie.destroy
    redirect_to admin_series_index_path, notice: "Série supprimée"
  end

  private

  def series_params
    params.require(:series).permit(:title, :description, :url)
  end
end
