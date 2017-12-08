class UsersController < ApplicationController
  def new
  end

  def create
    session[:username] = post_params[:username]
    redirect_to messages_url
  end

  private

  def post_params
    params.require(:user).permit(:username)
  end
end