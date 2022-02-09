class Api::V1::ControllerMessageController < ApplicationController
  def index
    render json: { :things => [
      {
        :name => 'paka'
        :hello => 'hello my friends'
      }
    ]}.to_json
  end 
end
