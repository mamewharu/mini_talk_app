class MessagesController < ApplicationController
  def new
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = message.new(text: params[:massage] [:text] )
    if @message.save
      ActionCable.sever.broadcast 'message_channel', content: @message
    end
  end
end
