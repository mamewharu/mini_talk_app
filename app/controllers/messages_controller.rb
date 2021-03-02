class MessagesController < ApplicationController
  def new
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = message.new(text: params[:massage] [:text] )
  end
end
