class MainsController < ApplicationController
  before_action :authorize, only: [:secret]

  def index
    @words = session[:user_id]
    render :index
  end

  def secret

  end

end