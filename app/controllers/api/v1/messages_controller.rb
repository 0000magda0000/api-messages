class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: [:show]
  def index
    @messages = Message.all
  end

  def show
    @message.increment!(:counter)
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

end
