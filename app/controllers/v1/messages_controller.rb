class V1::MessagesController < ApplicationController
  def index
  @messages = Messages.all.sample(1)
  render json: { :messages => @messages }.to_json
  end
end
