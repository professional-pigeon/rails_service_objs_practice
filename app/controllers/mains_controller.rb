class MainsController < ApplicationController
  # before_action :authorize, only: [:secret]
  require 'art'
  def index
    @words = session[:user_id]
    
    render :index
  end

  def search
    art_object = Art.new(params[:search])
    @photo = art_object.get_art_really
  end

end