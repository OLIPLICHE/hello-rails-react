# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static#index'

  namespace :v1, defaults: { format: 'json' } do
    get 'messages', to: 'messages#index'
  end
end
