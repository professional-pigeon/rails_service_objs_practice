class MainsController < ApplicationController
  before_action :authorize, only: [:secret]

  def index
    @words = session[:user_id]
    render :index
  end

  def search
    art_object = Art.new(params[:search])
    @photo = art_object.art_me
  end

  def secret
  end

end