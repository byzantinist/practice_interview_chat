class MessagesController < ApplicationController
  def new
  end

  def create
    message = Message.new(username: session[:username], text: post_params[:text])
    message.save
    @messages = Message.all
    redirect_to messages_url
  end

  def index
    @messages = Message.all
  end

  private

  def post_params
    params.require(:message).permit(:text)
  end


end