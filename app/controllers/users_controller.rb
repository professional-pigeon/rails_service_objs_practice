class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/main"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  # def index
  #   @user - User.find(session[:user_id])
  # end 

  def show
    @message = "Protected content reached"
  end 

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
