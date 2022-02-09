class V1::MessagesController < ApplicationController
  def index
    render json: { :messages => [
      {
        :name => 'paka',
        :hello => 'hello my friends'
      }
    ] }.to_json
  end
end
