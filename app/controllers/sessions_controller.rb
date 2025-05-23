class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:password] == ENV["ADMIN_PASSWORD"]
      session[:admin] = true
      redirect_to admin_series_index_path
    else
      flash[:alert] = "Mot de passe incorrect"
      render :new
    end
  end

  def destroy
    session[:admin] = nil
    redirect_to root_path
  end
end
